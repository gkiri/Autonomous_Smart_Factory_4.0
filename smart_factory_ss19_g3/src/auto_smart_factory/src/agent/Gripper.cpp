/*
 * Gripper.cpp
 *
 *  Modified on: 03.04.2019.
 *
 */

#include "agent/Gripper.h"
#include "agent/Agent.h"

Gripper::Gripper(Agent* _agent, ros::Publisher* gripper_state_pub) {
	agent = _agent;
	agentID = agent->getAgentID();
	gripperStatePub = gripper_state_pub;
}

bool Gripper::loadPackage(bool load) {
	float trayHeight = 0.4f;
	float robotHeight = 0.4f;
	float packageHeight = 0.4f;

	//float trayOffset = 0.3f; // Original This defines how deep the gripper pushes or pulls the packages
	float trayOffset = 0.47f;
	float robotOffsetLoaded = -0.15f;
	float packageOffsetLoaded = 0.1f; // Original Defines de position of the package loaded on the agent
	float robotOffsetUnloaded = 0.0f; // Original Defines de position of the gripper after unloading a package

	// get the postion from the agent
	geometry_msgs::Point robot_position = agent->getPreciseCurrentPosition();
	geometry_msgs::Quaternion robot_orientation = agent->getPreciseCurrentOrientation();
	tf::Quaternion q;
	tf::quaternionMsgToTF(robot_orientation, q);
	float orient = tf::getYaw(q);
	std::string str = load ? "load" : "unload";
	if(str == "load") {
		moveGripper(robot_position.x + (cos(orient) * trayOffset), robot_position.y + (sin(orient) * trayOffset), trayHeight, package);
		ros::ServiceClient client = n.serviceClient<std_srvs::Trigger>(agentID + "/gripper/" + str, true);
		std_srvs::Trigger srv;
		if(client.call(srv)) {
			if(srv.response.success) {
				// split MORSE response message to get to know the actual loaded package
				if(load) {
					std::vector<std::string> ids = split(split(srv.response.message, 'g')[1], '_');
					package.type_id = std::stoi(ids[0]);
					package.id = std::stoi(ids[1]);
				}
				//ROS_INFO("[%s]: Succesfully %sed package: pkg%u_%u", agentID.c_str(), str.c_str(), package.type_id, package.id);
				auto_smart_factory::GripperState gripper_state;
				gripper_state.loaded = load;
				gripper_state.package = package;
				gripperStatePub->publish(gripper_state);
				moveGripper(robot_position.x + (cos(orient) * robotOffsetLoaded), robot_position.y + (sin(orient) * robotOffsetLoaded), robotHeight, package);
				// The physical dynamics of the package has been affected by this set_position. To reset, as simple trick of unload + load again works
				// First UNLOADING to reposition the package
				ros::ServiceClient client = n.serviceClient<std_srvs::Trigger>(agentID + "/gripper/unload", true);
				std_srvs::Trigger srv;
				client.call(srv);
				if(srv.response.success) {
						// manually position the package on the top of the robot
						repositionPackage(robot_position.x + (cos(orient) * packageOffsetLoaded), robot_position.y + (sin(orient) * packageOffsetLoaded), packageHeight, package);
						// now load the package again
						ros::ServiceClient client = n.serviceClient<std_srvs::Trigger>(agentID + "/gripper/load", true);
						std_srvs::Trigger srv;
						client.call(srv);
						if(!srv.response.success) {
							ROS_WARN("[Gripper Manipulator] Failed to reload the packakge %s", agentID.c_str());
						}
				}
				else{
					ROS_WARN("[Gripper Manipulator]: Failed to unload the package for repositioning! Agent: %s", agentID.c_str());
				}

				return true;
			} else {
				ROS_ERROR("[%s]: Failed to %s package! %s", agentID.c_str(), str.c_str(), srv.response.message.c_str());
			}

		} else
			ROS_ERROR("[%s]: Failed to call gripper service!", agentID.c_str());

		return false;
	} else if(str == "unload") {
		moveGripper(robot_position.x + (cos(orient) * trayOffset), robot_position.y + (sin(orient) * trayOffset), trayHeight, package); //robot_position.y -/+ 0.25
	}

	ros::ServiceClient client = n.serviceClient<std_srvs::Trigger>(agentID + "/gripper/" + str, true);
	std_srvs::Trigger srv;
	if(client.call(srv)) {
		if(srv.response.success) {
			// split MORSE response message to get to know the actual loaded package
			if(load) {
				std::vector<std::string> ids = split(split(srv.response.message, 'g')[1], '_');
				package.type_id = std::stoi(ids[0]);
				package.id = std::stoi(ids[1]);
			}
			//ROS_INFO("[%s]: Succesfully %sed package : pkg%u_%u", agentID.c_str(), str.c_str(), package.type_id, package.id);
			auto_smart_factory::GripperState gripper_state;
			gripper_state.loaded = false;
			gripper_state.package = package;
			gripperStatePub->publish(gripper_state);
			moveGripper(robot_position.x + (cos(orient) * robotOffsetUnloaded), robot_position.y + (sin(orient) * robotOffsetUnloaded), robotHeight, package);
			return true;
		} else {
			ROS_ERROR("[%s]: Failed to %s package! %s", agentID.c_str(), str.c_str(), srv.response.message.c_str());
		}

	} else {
		ROS_ERROR("[%s]: Failed to call gripper service!", agentID.c_str());
	}

	return false;
}

std::vector<std::string> Gripper::split(std::string& text, char sep) {
	std::vector<std::string> tokens;
	std::size_t start = 0, end = 0;
	while((end = text.find(sep, start)) != std::string::npos) {
		tokens.push_back(text.substr(start, end - start));
		start = end + 1;
	}
	tokens.push_back(text.substr(start));
	return tokens;
}

bool Gripper::moveGripper(float x, float y, float z, auto_smart_factory::Package package) {
	std::string srv_name = "gripper_manipulator/move_gripper";
	ros::ServiceClient client = n.serviceClient<auto_smart_factory::MoveGripper>(srv_name.c_str());
	auto_smart_factory::MoveGripper srv;
	std::string grippr_id = agentID + ".gripper";
	srv.request.gripper_id = grippr_id.c_str();
	srv.request.x = x;
	srv.request.y = y;
	srv.request.z = z;
	ros::service::waitForService(srv_name.c_str());
	if(client.call(srv)) {
		if(srv.response.success) {
			return true;
		}
	} else {
		ROS_ERROR("[Gripper Manipulator] Failed to call service %s %s", srv_name.c_str(), grippr_id.c_str());
	}
	return false;
}

bool Gripper::repositionPackage(float x, float y, float z, auto_smart_factory::Package package){
	std::string srv_name = "package_manipulator/move_package";
	ros::ServiceClient client = n.serviceClient<auto_smart_factory::MovePackage>(srv_name.c_str());
	auto_smart_factory::MovePackage srv;
	srv.request.package_id = "pkg" + std::to_string(package.type_id) + "_" + std::to_string(package.id);
	srv.request.x = x;
	srv.request.y = y;
	srv.request.z = z;
	ros::service::waitForService(srv_name.c_str());
	if(client.call(srv)) {
		if(srv.response.success) {
			return true;
		}
	} else {
		ROS_ERROR("[Gripper Manipulator] Failed to reposition the package %s", srv.request.package_id.c_str());
	}
	return false;
}
