/*
 * Heartbeat.cpp
 *
 *  Modified on: 27.06.18.
 *
 */
bool Agent::isTimeForHeartbeat() {
    timeval time;
    gettimeofday(&time, 0);
    if (lastTimestamp == 0 || time.tv_sec - lastTimestamp >= breakDuration) {
        return true;
    }
    return false;
}

void Agent::sendHeartbeat() {
    auto_smart_factory::RobotHeartbeat heartbeat;
    heartbeat.id = agentID;
    heartbeat.idle = isIdle;

    if (position.z >= -1) {
        heartbeat.position = position;
        tf::Quaternion q;
        tf::quaternionMsgToTF(orientation, q);
        heartbeat.orientation = tf::getYaw(q);
    }
    heartbeat.battery_level = batteryLevel;
    heartbeat.with_package = with_package;
    heartbeat.queue_length = storedTasks.size();
    
    this->heartbeat_pub.publish(heartbeat);
    updateTimer();
    ROS_DEBUG("[%s]: Heartbeat: idle=%s!", agentID.c_str(), isIdle ? "true" : "false");
}

void Agent::sendJourneyData(float timeForCompletion) {
    ROS_INFO("[%s]: Sending Journey Data...", agentID.c_str());

    auto_smart_factory::RobotJourney journeyData;
    journeyData.id = agentID;
    journeyData.battery_consumption = initialBatteryForCurrentTask - batteryLevel;
    journeyData.time_for_completion = timeForCompletion;
    journeyData.distance = distanceTravelledForTask;

    this->journeyData_pub.publish(journeyData);
}
