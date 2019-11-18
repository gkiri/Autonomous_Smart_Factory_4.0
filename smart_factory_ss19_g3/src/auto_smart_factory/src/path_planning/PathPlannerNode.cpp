#include <path_planning/PathPlanner.h>

int main(int argc, char **argv) {
	ros::init(argc, argv, "path_planner");
	ros::NodeHandle nh;

	PathPlanner pathplanner;
	// CBSPlanner cbs(pathplanner.graph);
    // CBSPlanner cbs;

    ROS_INFO("Path planner is ready!");
	
	ros::spin();
}
