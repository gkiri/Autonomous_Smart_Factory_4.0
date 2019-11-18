/*
 * TaskHandler.cpp
 *
 *  Modified on: 27.06.18.
 *
 */


bool Agent::assignChargingTask(auto_smart_factory::AssignChargingTask::Request  &req,
                               auto_smart_factory::AssignChargingTask::Response &res){

    auto_smart_factory::Tray charging_tray = getTray(req.tray_id);

    if(req.end){  //End charging task
        if(currentPath.getPathGoal() == GOAL::CHARGE){
            currentPlan.setDone(true);
            setState(true); //Set to idle state?
            res.success = true;
            ROS_INFO("[TaskHandler] [%s]Successfully end charging task", agentID.c_str());
            return true;
        }
        else {
            ROS_INFO("[TaskHandler] [%s]: Charging management trying to end a non exist charging plan!", agentID.c_str());
            res.success = false;
            return false;
        }
    }
    ROS_INFO("[TaskHandler] [%s]: Handling charging task with battery level at %f", agentID.c_str(), batteryLevel);
    // This is the end position of this (charging) task
    // @TODO: UPDATE THE CODE BELOW. The end position needs to be adjusted in a way that the robot always approaches to the tray facing front
    // Imagine that the charging contact points are on the front side of the robot.
    geometry_msgs::Point charging_tray_position, charging_dir_position;
    double charging_dx = cos(charging_tray.orientation * PI / 180);
    double charging_dy = sin(charging_tray.orientation * PI / 180);
    charging_tray_position.x = charging_tray.x + 0.5 * charging_dx;
    charging_tray_position.y = charging_tray.y + 0.5 * charging_dy;

    charging_dir_position.x = charging_tray.x + 1.5 * charging_dx;  //Face to opposite of charging tray in case of carrying
    charging_dir_position.y = charging_tray.y + 1.5 * charging_dy;

    //Check if the Agent is performing a task
    if (!isIdle) {
        ROS_INFO("[TaskHandler] [%s] getting a charging task while having task", agentID.c_str());

        // Check if the current Path is a load/unload or already a charging task
        // @TODO: UPDATE BELOW The agent needs to decide what to do when a charging is needed while on a load / unload task
        // ...
        switch(currentPath.getPathGoal()) {
            case GOAL::LOAD:{
                ROS_INFO("[TaskHandler] [%s] Need to go charge with the LOAD", agentID.c_str());
                Path path_to_charge(agentID, chargeTaskID, GOAL::CHARGE, position,
                                    charging_tray_position, charging_tray_position, charging_dir_position, charging_tray_position, false);

                //Back start from charging position
                Path path_from_charge(agentID, currentPath.getTaskId(), GOAL::LOAD, charging_tray_position,
                                      currentPath.getDrivePoint(), currentPath.getApproachPoint(), currentPath.getDirectionPoint(), currentPath.getDriveBackPoint(), false);
                pathsStack.push(path_from_charge);
                setCurrentPath(path_to_charge);
            }
                break;
            case GOAL::UNLOAD:{
                Path path_to_charge(agentID, chargeTaskID, GOAL::CHARGE, currentPath.getDriveBackPoint(),
                                    charging_tray_position, charging_tray_position, charging_dir_position, charging_tray_position, false);
                pathsStack.push(path_to_charge);
            }
                break;
            case GOAL::CHARGE:
                ROS_WARN("[TaskHandler] Got another charging assignment when charging!");
                break;
            case GOAL::IDLE:{
                currentPlan.setDone(true);
                Path charging_path(agentID, chargeTaskID, GOAL::CHARGE, position, charging_tray_position, charging_tray_position, charging_dir_position, charging_tray_position, false);
                setCurrentPath(charging_path);

                if(pathsStack.top().getPathGoal() == GOAL::CHARGE)
                    ROS_INFO("[TaskHandler] [%s] IDLE + CHARGE -> next path goal: CHARGE ",agentID.c_str());
                else ROS_WARN("[TaskHandler] WRONG at IDLE + charge");
            }
                break;
            default: ROS_INFO("[TaskHandler] Other cases exists!!! %s for charging",agentID.c_str());
                break;
        }
    }
    else {
        Path charging_path(agentID, chargeTaskID, GOAL::CHARGE, position, charging_tray_position, charging_tray_position, charging_dir_position, charging_tray_position, true);
        setCurrentPath(charging_path);
    }

    //Create and set new current_path
    ROS_INFO("[TaskHandler] [%s]: Generating new path to charging station ID %d (x: %f, y: %f)", agentID.c_str(),req.tray_id, charging_tray_position.x, charging_tray_position.y);

    //Generate first chunk
    ROS_INFO("[TaskHandler] [%s]: Setting the first path chunk to charging station.", agentID.c_str());
    chargingStationId = req.tray_id;
    generateChargingPlan = true;
    setState(false);
    ROS_INFO("[TaskHandler] Debug point 2");
    res.success = getTheNextPath();
    ROS_INFO("[TaskHandler] [%s]: Task charging assigned! success: %d", agentID.c_str(), res.success);
    return true;
}

bool Agent::assignTask(auto_smart_factory::AssignTask::Request  &req,
                       auto_smart_factory::AssignTask::Response &res){
    try {
        //@TODO: Currently all the assigned tasks are directly executed (NO QUEUING). that is why the if(true) below. You are expected to store the tasks in a queue, and execute in order. That queue variable will also be used for SCORE calculation.
        // Stores the current assigned task
        ROS_INFO("[TaskHandler] DG: Agent %s: Previous number of stored tasks %d", agentID.c_str(), storedTasks.size());
        storedTasks.emplace(storedTasks.begin(), req); // Task order: First In - First Out
        ROS_INFO("[TaskHandler] DG: Agent %s: New number of stored tasks %d", agentID.c_str(), storedTasks.size());

        if(!isExecutingTask) {
            res.success = Agent::performTask(storedTasks.back());
            ROS_WARN("[TaskHandler] [%s]: Start to execute Task %i!", agentID.c_str(), req.task_id);

        } else {
            ROS_WARN("[%s]: Is busy! - Task %i was queued!",
                     agentID.c_str(), req.task_id);
            /* ROS_WARN("[%s]: Is busy! - Task %i has not been assigned!",
                     agentID.c_str(), req.task_id);
            res.success = false;*/
            res.success = true;
        }
    } catch (std::out_of_range &e) {
        // task does not exist
        ROS_ERROR("[TaskHandler] [%s]: Attempted to assign inexistent task (specified id: %d)",
                  agentID.c_str(), req.task_id);
        res.success = false;
    }
    return res.success;
}

bool Agent::performTask(auto_smart_factory::AssignTask::Request &req) {
    ROS_INFO("[TaskHandler] DG: Agent %s can execute this new task", agentID.c_str());
    isExecutingTask = true;
    
    isTaskStartedPublished=false; // CORRECTION FOR MULTIPACKAGE

    distanceTravelledForTask=0;
    //int task_id = req.task_id; // DELETION FOR MULTIPACKAGE
    currentTaskID = req.task_id; // CORRECTION FOR MULTIPACKAGE
    auto_smart_factory::Tray input_tray = getTray(req.input_tray);
    auto_smart_factory::Tray storage_tray = getTray(req.storage_tray);
    
    //when new task is assigned, pass the tray information to obstacle detection 
    //(it is used to disable safety and obstacle avoidance around them, in order for the robot to be able go near the trays)
    this->obstacleDetection->setInputTray(input_tray);
    this->obstacleDetection->setOutputTray(storage_tray);

    geometry_msgs::Point input_tray_position;
    geometry_msgs::Point storage_tray_position;

    input_tray_position.x = input_tray.x;
    input_tray_position.y = input_tray.y;
    storage_tray_position.x = storage_tray.x;
    storage_tray_position.y = storage_tray.y;

    //ROS_INFO("[%s]: AssignTask --> inputTray (x=%f, y=%f)", agentID.c_str(), input_tray.x, input_tray.y);
    //ROS_INFO("[%s]: AssignTask --> storageTray (x=%f, y=%f)", agentID.c_str(), storage_tray.x, storage_tray.y);

    geometry_msgs::Point input_drive_point;
    geometry_msgs::Point storage_drive_point;
    geometry_msgs::Point input_drive_back_point;
    geometry_msgs::Point storage_drive_back_point;
    geometry_msgs::Point input_approach_point;
    geometry_msgs::Point storage_approach_point;

    // don't drive to the tray exactly, stop a bit in front for (un)loading
    double input_dx = cos(input_tray.orientation * PI / 180);
    double input_dy = sin(input_tray.orientation * PI / 180);
    double storage_dx = cos(storage_tray.orientation * PI / 180);
    double storage_dy = sin(storage_tray.orientation * PI / 180);
    input_drive_point.x = input_tray_position.x + 0.5 * input_dx;
    input_drive_point.y = input_tray_position.y + 0.5 * input_dy;
    input_drive_back_point.x = input_tray_position.x + 1.3 * input_dx;
    input_drive_back_point.y = input_tray_position.y + 1.3 * input_dy;
    input_approach_point.x = input_tray_position.x + 1.5 * input_dx; //Original
    input_approach_point.y = input_tray_position.y + 1.5 * input_dy; //Original
    storage_drive_point.x = storage_tray_position.x + 0.5 * storage_dx; //Original
    storage_drive_point.y = storage_tray_position.y + 0.5 * storage_dy; //Original
    storage_drive_back_point.x = storage_tray_position.x + 0.6 * storage_dx;
    storage_drive_back_point.y = storage_tray_position.y + 0.6 * storage_dy;
    storage_approach_point.x = storage_tray_position.x + 1.5 * storage_dx; //Original
    storage_approach_point.y = storage_tray_position.y + 1.5 * storage_dy; //Original
    //ROS_INFO("input_d: ",input_dx, input_dy);
    //ROS_INFO("storage_d: ",storage_dx, storage_dy);
    //ROS_INFO("DG: input_tray_position: [%f,%f]", input_tray_position.x, input_tray_position.y);
    //ROS_INFO("DG: storage_tray_position: [%f,%f]", storage_tray_position.x, storage_tray_position.y);
    //ROS_INFO("DG: input_approach_point: [%f,%f]", input_approach_point.x, input_approach_point.y);
    //ROS_INFO("DG: storage_approach_point: [%f,%f]", storage_approach_point.x, storage_approach_point.y);
    // Override for traffic managment
    storage_drive_back_point=storage_drive_point;

    // Path path_to_input_tray(agentID, task_id, GOAL::LOAD, position, input_drive_point, input_approach_point, input_tray_position, input_drive_back_point, true); // DELETION FOR MULTIPACKAGE
    Path path_to_input_tray(agentID, currentTaskID, GOAL::LOAD, position, input_drive_point, input_approach_point, input_tray_position, input_drive_back_point, true); // CORRECTION FOR MULTIPACKAGE

    //    When Robot arrived at input_tray it will start traveling from input tray to output tray
    // Path path_to_storage_tray(agentID, task_id, GOAL::UNLOAD, input_drive_back_point, // DELETION FOR MULTIPACKAGE
    Path path_to_storage_tray(agentID, currentTaskID, GOAL::UNLOAD, input_drive_back_point, // CORRECTION FOR MULTIPACKAGE
                                storage_drive_point, storage_approach_point, storage_tray_position, storage_drive_back_point, false);

    // 2- Set currentPath
    setCurrentPath(path_to_input_tray);
    hasDriven = true;

    auto_smart_factory::TaskStarted msg;
    msg.started = true;
    msg.taskId = currentTaskID;
    taskStarted_pub.publish(msg);

    // 3- Add the remaining paths to the pathsStack
    pathsStack.push(path_to_storage_tray);

    ROS_INFO("[TaskHandler] Task %i successfully assigned to %s", currentTaskID, agentID.c_str(), req.task_id);
    initialTimeOfCurrentTask = ros::Time::now().toSec();
    // ROS_INFO("assignTask %s %.2f %i", agentID.c_str(), initialTimeOfCurrentTask, task_id); // DELETION FOR MULTIPACKAGE
    //ROS_INFO("[TaskHandler] Assigned task to %s at time %.2f with task ID %i", agentID.c_str(), initialTimeOfCurrentTask, currentTaskID); // CORRECTION FOR MULTIPACKAGE
    setState(false);     //Set to non idle if a task is assigned

    ROS_INFO("[TaskHandler] Agent %s queue increase to %d", agentID.c_str(), storedTasks.size());
    ROS_INFO("[TaskHandler] Debug point 1");
    return getTheNextPath();
}
