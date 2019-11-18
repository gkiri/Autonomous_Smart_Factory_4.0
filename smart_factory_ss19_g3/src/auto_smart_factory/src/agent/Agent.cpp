/*
 * Agent.cpp
 *
 *  Modified on: 27.06.18.
 *
 */

#include <agent/Agent.h>
#include "Heartbeat.cpp"
#include "TaskHandler.cpp"
#include "Callbacks.cpp"

Agent::Agent(std::string agent_id){
	agentID = agent_id;
	position.z = -1;

	ros::NodeHandle pn("~");

	//setup init_agent service
	pn.setParam(agentID, "~init");
	this->init_srv = pn.advertiseService("init", &Agent::init, this);
}

Agent::~Agent(){
	this->motionPlanner->~MotionPlanner();
	this->gripper->~Gripper();
	this->obstacleDetection->~ObstacleDetection();
}

std::string Agent::getAgentID(){
    return agentID;
}

geometry_msgs::Point Agent::getCurrentPosition(){
    return position;
}

geometry_msgs::Quaternion Agent::getCurrentOrientation(){
    return orientation;
}

geometry_msgs::Point Agent::getPreciseCurrentPosition(){
    return precise_position;
}

geometry_msgs::Quaternion Agent::getPreciseCurrentOrientation(){
    return precise_orientation;
}

void Agent::update(){
	if(initialized){

		//register at taskplanner if not already done
		if(!registered && registerAgent())
			setupTaskHandling();

		//register at charging stations if not already done
		if(!registeredCharging && registerAgentCharging())
			setupChargingHandling();

		//send heartbeat if the time has come to do so
		if(isTimeForHeartbeat())
			sendHeartbeat();

		//handle idle state.
		//currentPlan variable holds the existing plan. It may be used for ETA calculation. Once it is executed robot directly navigates there
		int pathLength = static_cast<int>(currentPlan.getLength());
		if(currentPlan.isDone() && pathLength != 0){

		    if(isDoingLastChunk)
				currentPath.setDone(true);

			if(currentPath.isDone()) {

				if(pathsStack.empty()) {
					this->motionPlanner->enable(false);
					if(initialTimeOfCurrentTask > 0.0) {
						double currentTime = ros::Time::now().toSec();
						ROS_INFO("[Agent] finalTimeOfTask %s %i %.2f", agentID.c_str(), currentPath.getTaskId(), currentTime);
						ROS_INFO("[Agent] durationOfTask %s %i %.2f", agentID.c_str(), currentPath.getTaskId(), currentTime - initialTimeOfCurrentTask);
						sendJourneyData(currentTime - initialTimeOfCurrentTask);
						initialTimeOfCurrentTask = 0.0;

						ROS_INFO("[Agent] TASK DONE! %s: Queue size before deletion_1 %d", agentID.c_str(), storedTasks.size());
						if (storedTasks.size() > 0) {
							storedTasks.pop_back();
						}
						ROS_INFO("[Agent] [debug] New number of stored tasks %d after deletion_1", storedTasks.size());
					}
					setState(true);    // Set to idle state if no paths
					// ROS_INFO("[Agent] Agent position at the end of the task: [%f,%f,]",position.x, position.y); // Final position of the agent
					//AddToQueue(false);	// Decrease the queue size by 1
					isExecutingTask = false;
					
					with_package = false; // is not with a package anymore
					ROS_INFO("[Agent] DG: Agent %s: task accomplished. Remaining queue size %d", agentID.c_str(), storedTasks.size());
					// If there are tasks pending, it needs to execute them
					if (storedTasks.size() != 0) {
						ROS_INFO("[Agent] [debug] TASK DONE - going for the next task! %s", agentID.c_str());
						Agent::performTask(storedTasks.back());
					}
				}
				else {
					setCurrentPath(pathsStack.top());
					ROS_INFO("[Agent] [debug] Delete_2 one task of the queue. Previous number of stored tasks %d", storedTasks.size());
					pathsStack.pop();
					ROS_INFO("[Agent] [debug] New number of stored tasks %d after deletion_2", storedTasks.size());
					setState(false);    // Remain not idle if has path
					ROS_INFO("[TaskHandler] Debug point 3");
					getTheNextPath();
				}
			}
		    else {
				ROS_INFO("[TaskHandler] Debug point 4");
				getTheNextPath();
		    }
		}
		//handle current_plan
		if(!currentPlan.isDone()) {
			if(!isTaskStartedPublished && taskStarted_pub.getNumSubscribers() > 0){
				auto_smart_factory::TaskStarted msg;
				msg.started = true;
				msg.taskId = currentTaskID;
				taskStarted_pub.publish(msg);

				ROS_INFO("[Agent] DG: get a new task?");

				isTaskStartedPublished=true;
			}

			currentPlan.execute(position, batteryLevel);
		}
	}
}

bool Agent::init(auto_smart_factory::InitAgent::Request  &req,
         auto_smart_factory::InitAgent::Response &res) {
	if(!initialized){
		initialized = initialize(req.warehouse_configuration, req.robot_configuration);
		if(initialized){
		    ROS_INFO("[Agent] initialize agent %s at time %.2f", agentID.c_str(), ros::Time::now().toSec());
	  		ROS_INFO("[Agent] [%s]: Succesfully initialized!", agentID.c_str());
	  		}
		else
	  		ROS_ERROR("[Agent] [%s]: Failed to initialize!", agentID.c_str());
	} else
  		ROS_WARN("[Agent] [%s]: Has already been initialized!", agentID.c_str());
	res.success = initialized;
  	return true;
}

bool Agent::initialize(auto_smart_factory::WarehouseConfiguration warehouse_configuration,
		auto_smart_factory::RobotConfiguration robot_configuration){
	ros::NodeHandle pn("~");
	warehouseConfig = warehouse_configuration;
	robotConfig = robot_configuration;

	if(!setupIdlePosition())
		return false;
	this->pose_sub = n.subscribe(agentID + "/pose", 1, &Agent::gyroCallback, this);
	this->gps_sub = n.subscribe(agentID + "/gps", 1, &Agent::gpsCallback, this);
	//pose precise is for testing purposes and for gripper positioning
	this->pose_precise_sub = n.subscribe(agentID + "/pose_precise", 1, &Agent::posePreciseCallback, this);
	this->battery_sub = n.subscribe(agentID + "/battery", 1, &Agent::batteryCallback, this);
	this->hokuyo_sub = n.subscribe(agentID + "/laser_scanner", 1, &Agent::laserCallback, this);
	this->motion_pub = pn.advertise<geometry_msgs::Twist>("motion", 1);
	this->heartbeat_pub = n.advertise<auto_smart_factory::RobotHeartbeat>("/robot_heartbeats", 1);
	this->journeyData_pub = n.advertise<auto_smart_factory::RobotJourney>("journey", 1);
	this->gripper_state_pub = pn.advertise<auto_smart_factory::GripperState>("gripper_state", 1);
	this->packageLoadUnloadServer = pn.advertiseService("package_load_unload", &Agent::PackageLoadUnloadServer, this);
	this->task_announce_sub = n.subscribe("/task_planner/task_broadcast", 1, &Agent::announcementCallback, this);
	this->taskrating_pub = pn.advertise<auto_smart_factory::TaskRating>("/task_response", 1);
	this->taskStarted_pub = pn.advertise<auto_smart_factory::TaskStarted>("task_started", 1);
	this->additional_time_pub = pn.advertise<auto_smart_factory::AdditionalTime>("additional_time", 1);
	//@TODO: Below topic can give some hints (example information an agent may need). They are not published in any of the nodes
	this->collision_alert_sub = n.subscribe("/collisionAlert", 1, &Agent::collisionAlertCallback, this);
	//used for debug
	this->path_pub = pn.advertise<nav_msgs::Path>("path", 1);
	//get hearthbeats from all robots
	this->heartbeat_sub = n.subscribe("/robot_heartbeats", 10, &Agent::heartbeatCallback, this);

	try {
		this->motionPlanner = new MotionPlanner(agentID,this->robotConfig, &(this->motion_pub), &(this->path_pub));
		this->gripper = new Gripper(this, &(this->gripper_state_pub));
		this->obstacleDetection = new ObstacleDetection(agentID, *motionPlanner,
			       robotConfig, warehouseConfig, robotsHeartbeat);
		return true;
	} catch (...) {
		ROS_ERROR("[Agent] [%s]: Exception occured!", agentID.c_str());
		return false;
	}
	ROS_WARN("[Agent] Finished Initialize [%s]", agentID.c_str());
}

bool Agent::setupIdlePosition() {
	for(int i=0; i < warehouseConfig.idle_positions.size(); i++)
		if(warehouseConfig.idle_positions[i].id == agentID) {

			idlePosition.x = warehouseConfig.idle_positions[i].pose.x;
			idlePosition.y = warehouseConfig.idle_positions[i].pose.y;
			double rad = warehouseConfig.idle_positions[i].pose.theta / 180.0 * PI;
			idleOrientationPoint.x = idlePosition.x + cos(rad) * 1.0;
			idleOrientationPoint.y = idlePosition.y + sin(rad) * 1.0;
			return true;
		}
	ROS_ERROR("[Agent] [%s]: Failed to setup idle position!", agentID.c_str());
	return false;
}

bool Agent::registerAgent(){
	std::string srv_name = "task_planner/register_agent";
	ros::ServiceClient client = n.serviceClient<auto_smart_factory::RegisterAgent>(srv_name.c_str());
	auto_smart_factory::RegisterAgent srv;
	srv.request.agent_id = agentID;
	srv.request.robot_configuration = robotConfig;
	ros::service::waitForService(srv_name.c_str());

    if (client.call(srv)) {
			if(!registered){
			registered = (bool) srv.response.success;
			if(registered)
				ROS_INFO("[Agent] [%s]: Succesfully registered!", agentID.c_str());
			else
				ROS_ERROR("[Agent] [%s]: Failed to register!", agentID.c_str());
		} else
  			ROS_WARN("[Agent] [%s]: Has already been registered!", agentID.c_str());
	} else {
		ROS_ERROR("[Agent] [%s]: Failed to call service %s!", agentID.c_str(), srv_name.c_str());
	}
	return registered;
}

bool Agent::registerAgentCharging(){
	std::string srv_name = "charging_management/register_agent_charging_management";
	ros::ServiceClient client = n.serviceClient<auto_smart_factory::RegisterAgentCharging>(srv_name.c_str());
	auto_smart_factory::RegisterAgentCharging srv;
	srv.request.agent_id = agentID;
	srv.request.robot_configuration = robotConfig;
	srv.request.battery_level = batteryLevel;
	ros::service::waitForService(srv_name.c_str());
	if (client.call(srv)){
		if(!registeredCharging){
			registeredCharging = (bool) srv.response.success;
			if(registeredCharging)
				ROS_INFO("[Agent] [%s]: Succesfully registered at charging station!", agentID.c_str());
			else
				ROS_ERROR("[Agent] [%s]: Failed to register at charging station!", agentID.c_str());
		} else
  			ROS_WARN("[Agent] [%s]: Has already been registered at charging station!", agentID.c_str());
	} else {
		ROS_ERROR("[Agent] [%s]: Failed to call service %s!", agentID.c_str(), srv_name.c_str());
	}
	return registeredCharging;
}

/*
 * Sets up services to communicate with task planner.
 */
void Agent::setupTaskHandling(){
	ros::NodeHandle pn("~");
	pn.setParam(agentID, "~assign_task");
	this->assign_task_srv = pn.advertiseService("assign_task", &Agent::assignTask, this);
}

void Agent::setState(bool idle) {
	if((isIdle && !idle) || (!isIdle && idle)) {
		isIdle = idle;
		sendHeartbeat();
	}
}

void Agent::updateTimer() {
	timeval time;
	gettimeofday(&time, 0);
	lastTimestamp = time.tv_sec;
}

/*
 * Sets up services to communicate with charging station.
 */
void Agent::setupChargingHandling(){
	ros::NodeHandle pn("~");
	pn.setParam(agentID, "~assign_charging_task");  //?
	this->assign_charging_task_srv = pn.advertiseService("assign_charging_task", &Agent::assignChargingTask, this);
}

void Agent::newTaskStarted() {
	distanceTravelledForTask=0;
	previousPose.x=-1;
}

bool Agent::getTheNextPath() {
    // Requests a path from the Path_Planner

    std::string srv_name = "/path_planner/request_new_path";
    ros::ServiceClient client = n.serviceClient<auto_smart_factory::RequestNewPath>(srv_name.c_str());
    auto_smart_factory::RequestNewPath srv;

    geometry_msgs::Point start_position = position;
		// approach_position is the approach point. The path planner plans until this position. approach point is calculated in  Agent::assignTask
	geometry_msgs::Point approach_position = currentPath.getApproachPoint();      //request from path planner only until approach point

	// currentPath is an instance of Path class. Holds the paths / chunks assigned for the robot (see Path.cpp for more)
	bool next_chunk = !currentPath.isFirstChunk();

    srv.request.agent_id = agentID;
    srv.request.next_chunk = next_chunk;
    srv.request.start_node = start_position;
    srv.request.end_node = approach_position;

    ros::service::waitForService(srv_name.c_str());
	if (client.call(srv)){
		ROS_INFO("[Agent] [%s]: Successfully started to calculate path!", agentID.c_str());

        double min_time_take = calculateTimeFromDistanceAndVelocity(srv.response.main_path_length, robotConfig.min_linear_vel);

		if(min_time_take >= 0) {
			if(min_time_take == 0) {
				ROS_ERROR("[Agent] [%s]: Path length is 0: %s!", agentID.c_str(), srv_name.c_str());
			}

			int last_value_index = srv.response.new_path_nodes.size()-1;

			Plan plan = Plan();
	        if (srv.response.is_last_chunk) {
				isDoingLastChunk=true;

	         	std::vector<geometry_msgs::Point> path_to_goal;
				path_to_goal=srv.response.new_path_nodes;
				// end_position here is the drive point.
				path_to_goal.push_back(currentPath.getDrivePoint());

				switch(currentPath.getPathGoal()) {

					case GOAL::LOAD: {
						plan = Plan(agentID,
									*motionPlanner,
									*gripper,
									true,
									start_position,
									path_to_goal,
									currentPath.getDirectionPoint(),
									currentPath.getDriveBackPoint(),
									min_time_take);
						with_package = true;
					}
					break;

					case GOAL::UNLOAD: {
						plan = Plan(agentID,
									*motionPlanner,
									*gripper,
									false,
									start_position,
									path_to_goal,
									currentPath.getDirectionPoint(),
									currentPath.getDriveBackPoint(),
									min_time_take);
						with_package = false;
					}
					break;
					// @TODO: This is left unimplemented. Please incorporate it into the project by properly arranging a plan
					case GOAL::CHARGE: {
						/*plan = Plan(agentID, 
									*motionPlanner,
									charging_station_id,
									start_position,
									path_to_goal, // path to charging station
									charging_direction_point,
									length);*/

						with_package = false;
					}
					break;
				}
			}
	        else {
				isDoingLastChunk=false;
            	//   Constructor for a plan to drive to a certain goal position.
                plan = Plan(agentID, *motionPlanner, start_position, srv.response.new_path_nodes,
                		srv.response.new_path_nodes[last_value_index], min_time_take);
            }
            if(initialTimeOfCurrentTask <= 0.0)
				newTaskStarted();

	        // The rest of the variable assignments, motion and obstacle detector initiators/enablers should stay for the functionality
            currentPlan = plan;
			this->motionPlanner->enable(true);
			this->motionPlanner->start();
			this->obstacleDetection->enable(true);

            if (currentPath.isFirstChunk()) {
                // After getting the first chunk of the path set first chunk value of the currentPath to false
                currentPath.setFirstChunk(false);
            }
			return true;
		}
		else {
			ROS_WARN("[Agent] [%s]: No path found: %s!", agentID.c_str(), srv_name.c_str());
		}
	}
	else {
		ROS_ERROR("[Agent] [%s]: Failed to call service %s!", agentID.c_str(), srv_name.c_str());
	}

	return false;
}

void Agent::setCurrentPath(Path new_path) {
    currentPath = new_path;
}

auto_smart_factory::Tray Agent::getTray(unsigned int tray_id) {
	for(int i=0; i < warehouseConfig.trays.size(); i++)
		if(tray_id == warehouseConfig.trays[i].id)
			return warehouseConfig.trays[i];
	ROS_ERROR("[Agent] [%s]: Tray with id %u inexistent!",
			agentID.c_str(), tray_id);
}

double Agent::calculateTimeFromDistanceAndVelocity(double distance, double velocity) {
    return distance/velocity;
}

std::string Agent::GoalToString (GOAL goal){
	if (goal == GOAL::LOAD){
		return "LOAD";
	}
	else if(goal == GOAL::UNLOAD){
		return "UNLOAD";
	}
	else if(goal == GOAL::CHARGE){
		return "CHARGE";
	}
	else if(goal == GOAL::IDLE){
	return "IDLE";
	}
}

float Agent::randomFloat(float min, float max){
	srand((unsigned int) time(NULL));
	float randNum = ((float)rand()/(float)(RAND_MAX)) * (max - min) + min;
	ROS_INFO("[Agent] Random: %f", randNum);
	return randNum;
}

bool Agent::PackageLoadUnloadServer(auto_smart_factory::PackageLoadUnloadRequest& req, auto_smart_factory::PackageLoadUnloadResponse& res){
	if(req.load) {
		res.success = gripper->loadPackage(true);
	}
	else if(!req.load) {
		res.success = gripper->loadPackage(false);
	}
	return res.success;
}

void Agent::updatePackageStatus(bool newPackageStatus){
	with_package = newPackageStatus;
}