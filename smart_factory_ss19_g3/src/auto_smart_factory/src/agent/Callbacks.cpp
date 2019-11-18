/*
 * Callbacks.cpp
 *
 *  Modified on: 27.06.18.
 *
 */

//#include <agent/Agent.h>

double distanceBetweenTwoPoints(double x1, double y1, double x2, double y2) {
    return sqrt(pow(x1 - x2, 2.0) + pow(y1 - y2, 2.0));
}

void Agent::gyroCallback(const geometry_msgs::PoseStamped &msg) {
    orientation = msg.pose.orientation;
    tf::Quaternion q;
    tf::quaternionMsgToTF(orientation, q);
    tf_orientation_yaw = tf::getYaw(q);
}

void Agent::gpsCallback(const sensor_msgs::NavSatFix &msg) {

    position.x = msg.latitude;
    position.y = msg.longitude;
    // position.z = msg.altitude

    if (previousPose.x != -1) {
        double dis = sqrt(pow(position.x - previousPose.x, 2.0) + pow(position.y - previousPose.y, 2.0));
        distanceTravelledForTask += dis;
    }

    if(this->motionPlanner->isEnabled()) {
        this->obstacleDetection->enable(true);
        //replace precise_position by position for noise
        this->motionPlanner->update(precise_position, tf_orientation_yaw);
    } else
        this->obstacleDetection->enable(false);

    previousPose = position;
}

void Agent::heartbeatCallback(const auto_smart_factory::RobotHeartbeat& msg){    
    int iterToUpdate = -1;
    for(int i = 0; i<robotsHeartbeat.size(); i++){
        if(robotsHeartbeat[i].id.compare(msg.id)==0){
            iterToUpdate = i;
            break;
        }
    }

    // if robot with this name has not been found, save it and reorder the vector in alphabetical order
    if(iterToUpdate == -1){
        auto_smart_factory::RobotHeartbeat temp;
        temp.id = msg.id;
        temp.position=msg.position;
        temp.queue_length=msg.queue_length;
        temp.with_package=msg.with_package;
        robotsHeartbeat.push_back(temp);

        //sort the saved vector alphabetically. This is important for calculating the priority of robots while avoiding eachother
        std::sort(std::begin(robotsHeartbeat), std::end(robotsHeartbeat), [](const auto_smart_factory::RobotHeartbeat &a1, const auto_smart_factory::RobotHeartbeat &a2 ){
            return a1.id.compare(a2.id) > 0;
        });
        return;
    }

    if(iterToUpdate<0){
        ROS_ERROR("Something went wrong in the hearbeatCallback");
        return;
    }
 
    //update the saved data
    robotsHeartbeat[iterToUpdate].id = msg.id;
    robotsHeartbeat[iterToUpdate].position=msg.position;
    robotsHeartbeat[iterToUpdate].queue_length=msg.queue_length;
    robotsHeartbeat[iterToUpdate].with_package=msg.with_package;

    return;
}

void Agent::laserCallback(const sensor_msgs::LaserScan &msg) {
    ROS_DEBUG("[%s]: Laser callback: angle_min=%f, angle_max=%f, ranges_size=%lu",
              agentID.c_str(), msg.angle_min, msg.angle_max, msg.ranges.size());
    if (this->obstacleDetection->isEnabled())
        this->obstacleDetection->update(position, tf_orientation_yaw, msg);
}

void Agent::batteryCallback(const std_msgs::Float32 &msg) {
    batteryLevel = msg.data;
    ROS_DEBUG("[%s]: Battery Level: %f!", agentID.c_str(), batteryLevel);
}

void Agent::collisionAlertCallback(const auto_smart_factory::CollisionAction& msg) {
    // @TODO: this callback halts the motion when a collision detected. But currently there is no topic publishing such an alert
    // This function is left here as a hint. This alert can be sent by the obstacle detector, or by the central path/traffic planer.
    // Please examine CollisionAction.msg if you would like to use it.
    // It can be updated to take another strategies to avoid further collisions.
    if (msg.RobotId == agentID) {
        ROS_WARN("Got collision alert [%s] of length %.2f with halt %i", agentID.c_str(), msg.time_to_halt, msg.halt);
        this->obstacleDetection->enable(false);
        this->motionPlanner->stop();
        if (msg.halt) {
            ros::Duration(1*msg.time_to_halt).sleep();
            this->motionPlanner->start();
            this->obstacleDetection->enable(true);
        }
    }
}

void Agent::announcementCallback(const auto_smart_factory::TaskAnnouncement& taskAnnouncement) {
    //@TODO Calculate scores for all combinations of input and storage trays and select the best solution
    //@TODO: Regarding the queueing of agent tasks, if (!isIdle) should be removed as now the agents can also be assigned with new tasks when they are already on a task
    /*if(!isIdle){
        rejectTask(taskAnnouncement.request_id);
    }*/

    // Setup initial values (size of the map)
    double input2output_distance = 20;
    double robot2input_distance = 20;
    double combined_distance = 20;
    uint32_t best_comb_it_id;
    uint32_t best_comb_st_id;
    double best_score = 100;
    double EstimateDuration = 20;
    double avg_speed = 1;

    //ROS_INFO("DG: Read Request %d with %d start Trays and %d end Trays", taskAnnouncement.request_id, (unsigned int)taskAnnouncement.start_ids.size(), (unsigned int)taskAnnouncement.end_ids.size());

    for(uint32_t it_id : taskAnnouncement.start_ids) {
        //ROS_INFO("DG start_it_id: %d", (unsigned int)it_id);
        for (uint32_t st_id : taskAnnouncement.end_ids) {
            //ROS_INFO("DG end_st_id: %d", (unsigned int)st_id);

            auto_smart_factory::Tray input_tray = getTray(it_id);
            auto_smart_factory::Tray storage_tray = getTray(st_id);
            
            //ROS_INFO("DG: Request %d Combination input %d output %d", taskAnnouncement.request_id, (unsigned int)it_id, (unsigned int)st_id);
            //ROS_INFO("DG SourceTray %d TargetTray %d", (unsigned int)input_tray.id, (unsigned int)storage_tray.id);

            geometry_msgs::Point input_tray_position;
            geometry_msgs::Point storage_tray_position;

            input_tray_position.x = input_tray.x;
            input_tray_position.y = input_tray.y;
            storage_tray_position.x = storage_tray.x;
            storage_tray_position.y = storage_tray.y;

            //@TODO Calculate score for this pair of input and storage trays having their positions
            // Calculate distance between start and end position
            //ROS_INFO("DG Robot Current Position %f, %f", position.x, position.y);
            input2output_distance = distanceBetweenTwoPoints(input_tray.x,input_tray.y,storage_tray.x,storage_tray.y);
            robot2input_distance = distanceBetweenTwoPoints(position.x,position.y,input_tray.x,input_tray.y);
            //ROS_INFO("DG distance %f SourceTray %d TargetTray %d", input2output_distance, (unsigned int)input_tray.id, (unsigned int)storage_tray.id);
            //ROS_INFO("DG distance %f Robot %s SourceTray %d", robot2input_distance, agentID.c_str(), (unsigned int)input_tray.id);
            combined_distance = input2output_distance + robot2input_distance;
            //ROS_INFO("DG combined distance %f Robot %s SourceTray %d SourceTray %d", combined_distance, agentID.c_str(), (unsigned int)input_tray.id, (unsigned int)storage_tray.id);

            if (combined_distance < best_score) {
                best_score = combined_distance;
                best_comb_it_id = it_id;
                best_comb_st_id = st_id;
                EstimateDuration = combined_distance / avg_speed;
            }
        }
    }

    //@TODO If some best solution found, then publish the results, otherwise reject task
    // Queue size is a multiplier for the best_score. The algorithm will prefer to select an agent with less pending task.
    best_score = best_score * (20 * storedTasks.size() + 1);
    ROS_INFO("DG Request %d best score %f for agent %s Battery Level %f queue size %d: SourceTray %d SourceTray %d", taskAnnouncement.request_id, best_score, agentID.c_str(), batteryLevel, storedTasks.size(), (unsigned int)best_comb_it_id, (unsigned int)best_comb_st_id);

    // The agent requires around ~20% battery to accomplish one task. Therefore, it will reject tasks that will not be able to acomplish on one charge
    if (best_score != 100 && batteryLevel > batteryThreshold + 20*(storedTasks.size() + 1)) {
        // Missing to estimate duration
        publishScore(taskAnnouncement.request_id, best_score, best_comb_it_id, best_comb_st_id, EstimateDuration);
    } else {
        ROS_INFO("DG: Task rejected Battery Level %f queue size %d", batteryLevel, storedTasks.size());
        rejectTask(taskAnnouncement.request_id);
    }
    //    
}

void Agent::publishScore(unsigned int requestId, double score, uint32_t startTrayId, uint32_t endTrayId, double estimatedDuration) {
    auto_smart_factory::TaskRating scoreMessage;
    scoreMessage.request_id = requestId;
    scoreMessage.robot_id = agentID;
    scoreMessage.start_id = startTrayId;
    scoreMessage.end_id = endTrayId;
    scoreMessage.reject = false;
    scoreMessage.score = score;
    scoreMessage.estimatedDuration = estimatedDuration;
    taskrating_pub.publish(scoreMessage);
}

void Agent::rejectTask(unsigned int requestId) {
    auto_smart_factory::TaskRating scoreMessage;
    scoreMessage.request_id = requestId;
    scoreMessage.robot_id = agentID;
    scoreMessage.reject = true;
    taskrating_pub.publish(scoreMessage);
}

void Agent::posePreciseCallback(const geometry_msgs::PoseStamped &msg) {
    precise_orientation = msg.pose.orientation;
    precise_position = msg.pose.position;
}
