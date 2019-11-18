/*
 * MotionPlanner.h
 *
 *  Modified on: 27.06.18.
 *
 */

#ifndef AUTO_SMART_FACTORY_SRC_MOTIONPLANNER_H_
#define AUTO_SMART_FACTORY_SRC_MOTIONPLANNER_H_

#include "ros/ros.h"
#include <string>
#include <vector>
#include <sstream>
#include <cmath>
#include "geometry_msgs/Point.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Path.h"
#include <auto_smart_factory/RobotConfiguration.h>
#include <algorithm>    // std::min

/**
 * The motion planner component manages all movement related stuff ongoing at the agents side.
 * It coverts information about the current position as well as orientation and  a list of points
 * called path to a certain velocity and publishes it to the motion actuator topic to move the robot.
 * The motion planner needs to be fed continously with current pose data to work as expected.
 */
class MotionPlanner{

public:
	/**
	 * Constructor that hands over some the robot configuration as well as
	 * the motion acutator publisher.
	 * @param agent_id: id of the agent this motion planner is assigned to
	 * @param robot_config: information about the role of the agent this motion planner belongs to
	 * @param motion_pub: publisher for the motion actuator topic
	 */
	MotionPlanner(std::string agent_id,auto_smart_factory::RobotConfiguration robot_config, ros::Publisher *motion_pub, ros::Publisher *path_pub);

    virtual ~MotionPlanner();

	/**
	 * Hands over the current position as well as the current orientation of the robot on the current
	 * map and determines whether to drive the current path or not.
	 * @param position: current position of the agent
	 * @param orientation: current orientation of the agent
	 */
	void update(geometry_msgs::Point position, double orientation);

	/**
	 * Sets the current path to be driven by this motion planner and resets all necessary variables.
	 * @param start_position: the start position of the agent to drive the given plan
	 * @param new_path: the new path to drive
	 * @param end_direction_point: the point the agent should look to when the path has been
	 * 			       successfully driven
	 * @param drive_backwares: whether the given plan shall be driven backwards or not
	 */
	void newPath(geometry_msgs::Point start_position, std::vector<geometry_msgs::Point> new_path,
			geometry_msgs::Point end_direction_point, bool drive_backwards = false);

	/**
	 * Enables / disables this motion planner.
	 * @param enable: whether to enable or disable this motion planner
	 */
	void enable(bool enable);

	/**
	 * Returns if this motion planner is enabled right now.
	 * @return True if this motion planner is enabled
	 */
	bool isEnabled();

	/**
	 * Once the tests are enabled, the regular operation stops and robot can only be controlled manually
	 * Returns if this motion planner is enabled for the tests.
	 * @return True if this motion planner is enabled for testing
	 */
	bool isTestsEnabled();

	/**
	 * Sets the motion planner to be allowed to move.
	 */
	void start();

	/**
	 * Sets the motion planner to be not allowed to move and tells the motion acuator to stand still.
	 */
	void stop();

	/**
	 * Returns whether this motion planner has succesfully driven the current path.
	 * @return True whether the current path has been driven
	 */
	bool isDone();

	/**
	 * Returns if this motion planner is driving backwards right now.
	 * @return True if this motion planner is driving backwards
	 */
	bool isDrivingBackwards();

	/**
	 * Returns the drive forward distance accuracy.
	 * @return drive forward distance accuracy
	 */
	double getDriveForwardDistanceAccuracy();

	void setStaticObstacleDetected(bool flag);

	void setSafetyStop(bool _flag);

	double integral;
    double pre_error;

	void setObstTurnMultiplier(double mult);
	//ADDED BY ILIAS
	void setPathIndex(int _index);
	int getPathIndex();
	double distNoRoot(geometry_msgs::Point p1, geometry_msgs::Point p2);
	int sign(geometry_msgs::Point robot,geometry_msgs::Point pointIndex,geometry_msgs::Point nextPointIndex);

	void getLine(double x1, double y1, double x2, double y2, double &a, double &b, double &c);
	double dist(double pct1X, double pct1Y, double pct2X, double pct2Y, double pct3X, double pct3Y);
	//EDITION ENDS HERE

	double linear_vel(geometry_msgs::Point p1,geometry_msgs::Point p2,float kp);
	double angular_vel(geometry_msgs::Point position,double orientation,float k_theta);

	std::vector<geometry_msgs::Point> getCurrentPath();

	void PublishPath(std::vector<geometry_msgs::Point>, int begin_index, int end_index);
	double getDistance2(geometry_msgs::Point p1, geometry_msgs::Point p2);

	void rotate(int side);

// protected:
	/**
	 * Hands over the currently sensed position and orientation of the robot to execute the driving
	 * of the current path. Manages the current path and decides wheter to turn or not and publishes
	 * the velocities to the motion actuator topic.
	 * @param position: current position of the robot
	 * @param orientation: current oriientation of the robot
	 * @return True if the current plan has been driven successfully
	 */
	bool driveCurrentPath(geometry_msgs::Point position, double orientation);

	bool avoidObstacle();

	void setApproachPathParameters(geometry_msgs::Point start, geometry_msgs::Point end);

	
	/**
	 * Takes in motion message and publishes it regulated. Regulated means that if linear
	 * or angular speed exceed maximum limits (turningMaxSpeed and drivingMaxSpeed) it sets
	 * them as max limits. If motion speeds are within limits, it does not change them.
	 * @param  {geometry_msgs::Twist} motion : motion message to publish regulated
	 */
	void publishRegMotion(const geometry_msgs::Twist &motion);

	std::vector<geometry_msgs::Point> createDebugPath();

	/// information about the current role of the agent
	auto_smart_factory::RobotConfiguration robotConfig;

	/// ID of the agent this motion planner is assigned to
	std::string agentID;

	/// Publisher for the motion actuator topic
	ros::Publisher *motionPub;

	/// Publisher for the debug topic
	ros::Publisher *pathPub;
    /// start position of the current path
	geometry_msgs::Point startPosition;

	/// the current path to drive
	std::vector<geometry_msgs::Point> path;
	std::vector<geometry_msgs::Point> pathTo;//EDITED BY ILIAS AND NISHANT

	/// the index of the current waypoint
	int currentTargetIndex = -1;

	/// the point the robot should look to, when the goal position is reached
	geometry_msgs::Point endDirectionPoint;

	/// Flag whether the motion planner is enabled or not
	bool enabled = false;

	/// enable ros param string
	std::string test_enable_paramStr;

	/// Flag whether the tests are enabled: allows to control the robot manually
	bool tests_enabled = false;

	/// Flag whether the motion planner has succesfully driven the current path
	bool done = true;

	/// Flag whether the motion planner should stop moving
	bool standStill = true;

	/// Flag wether the static obstacle has been detected
	bool staticObstacleDetected = false;
	
	bool prevStaticObstDetected = false;

	bool safetyStop = false;

	double obstAlignMultiplier = 0.0;
	/// Flag whether to drive the current backwards or not
	bool driveBackwards = false;
    
	bool stop_complete=false;

	/// maximal speed to turn the robot on spot with
	double turningMaxSpeed = 0.8;

	/// maximal speed to drive straight with the robot
	//EDITED by Ilias, was 1
	double drivingMaxSpeed = 1;

	//EDITED by Ilias, was 0.2
	/// minimal speed to drive straight with the robot
	double drivingMinSpeed = 0.2;

	/**
	 * Accuracy that determines the allowed distance to stop when in vicinity of the goal point while
	 * driving forward.
	 */
	double driveForwardDistanceAccuracy = 0.35; //.15

	/// pi
	const double PI = 3.141592653589793238463;
	/*ADDED BY ILIAS
	*/
	double drivingSpeed;
	int index = 0;
	bool reachedTheEnd = false;
	double lastMemorisedError = 0;
	double lastMemorisedAngularError = 0;
	double lastError=0,dcte=0;
	bool pathApproachFlag = false;

	int global_path_index;

	geometry_msgs::Point approachStartPoint;
	geometry_msgs::Point approachEndPoint;
	
	geometry_msgs::Point Current_Backward_Point;
	geometry_msgs::Point Last_Backward_Point;
	geometry_msgs::Point Last_Before_Backward_Point;

	//UNTIL HERE
};

#endif /* AUTO_SMART_FACTORY_SRC_MOTIONPLANNER_H_ */
