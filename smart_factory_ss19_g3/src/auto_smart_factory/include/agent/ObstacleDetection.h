/*
 * ObstacleDetection.h
 *
 *  Modified on: 27.06.18.
 *
 */


#ifndef AUTO_SMART_FACTORY_SRC_OBSTACLEDETECTION_H_
#define AUTO_SMART_FACTORY_SRC_OBSTACLEDETECTION_H_

#include "agent/MotionPlanner.h"

#include "ros/ros.h"
#include <string>
#include <vector>
#include <cmath>
#include <time.h>
#include <stdlib.h>
#include "sensor_msgs/LaserScan.h"
#include <auto_smart_factory/RobotConfiguration.h>
#include <auto_smart_factory/WarehouseConfiguration.h>
#include <auto_smart_factory/GetLocalPath.h>
#include <auto_smart_factory/RobotHeartbeat.h>

/**
 * The obstacle detection component analyzes the laser data provided by the laser sensor,
 * compares the sensed data with the static obstacles on the map & sends local path requests to the
 * roadmap planner if some dynamic obstacle has been sensed, so if it's necesarry an alternative
 * path could be chosen for the robot.
 */

class ObstacleDetection {

public:
    /**
     * Constructor that hands over a motion planner instance and some configurations.
     * Builds a grid matrix considering the given occupancy grid.
     * @param agent_id: id of the agent this obstacle detection instance belongs to
     * @param motion_planner: instance of the motion planner to hand over instructions
     * @param robot_config: information about the role of the agent this obstacle detection belongs to
     * @param warehouse_config: information about the current warehouse map
     */
    ObstacleDetection(std::string agent_id,
                      MotionPlanner &motion_planner,
                      auto_smart_factory::RobotConfiguration robot_config,
                      auto_smart_factory::WarehouseConfiguration warehouse_config,
                      std::vector<auto_smart_factory::RobotHeartbeat>& robots_heartbeat);

    virtual ~ObstacleDetection();

    /**
     * Hands over the current position, the current orientation of the robot and the current
     * laser data sensed by the laser sensor and decides whether to analyze the laser data.
     * @param position: current positon of the agent
     * @param orientation: current orientation of the agent
     * @param msg: current laser data
     * TODO add description of otherPoses and 
     */
    void update(geometry_msgs::Point &position, double orientation,
                const sensor_msgs::LaserScan &msg);

    /**
     * Enables / disables this obstacle detection instance.
     * @param enable: whether to enable or disable
     */
    void enable(bool enable);

    /**
     * Returns whether this obstacle detection instance is enabled or not.
     * @return enabled?
     */
    bool isEnabled();

    //TODO document
    void setInputTray(auto_smart_factory::Tray it);

    //TODO document
    void setOutputTray(auto_smart_factory::Tray ot);

protected:

    /**
     * Analyzes whether the obstacles the laser sensed nearer to the robot then the given distance.
     * @param distance: allowed distance
     * @param ranges: list of the ranges each laser senses
     * @return True if there are some obstacles in a smaller range then the given distance
     */
    bool isRangeSmaller(double distance, std::vector<float> ranges);

    /**
     * Maintains the whole analyzation process of the laser data, when there are obstacles detected
     * @param positon: current position of the robot
     * @param orientation: current orientation of the robot
     * @param msg: currently sensed laser data
     */
    bool analyzeLaserScan(geometry_msgs::Point &position, double orientation,
                          const sensor_msgs::LaserScan &msg);

    /**
     * Translates the given laser ranges into points in the x-y coordinate plane considering the
     * current pose of the robot.
     * @param position: the current positon of the robot
     * @param orientation: the curren orientation of the robot
     * @param msg: the currently sensed laser data
     * @return list of the points the lasers point to
     */
    std::vector<geometry_msgs::Point> getPointList(geometry_msgs::Point position, double orientation,
                                                   const sensor_msgs::LaserScan &msg);

    std::vector<geometry_msgs::Point> polarToEucledian(const sensor_msgs::LaserScan &msg);

    /**
     * Checks if corridor (cone of a )
     */
    bool isCorridorEmpty(const geometry_msgs::Point &start, double orientation, const geometry_msgs::Point &end, double width, double range, int pointsThresh, const sensor_msgs::LaserScan &laser, bool& empty);
    
    bool pointsInsideLaserAngle(const sensor_msgs::LaserScan &laser, double start_angle, double stop_angle, double range, int& numOfPoints);

    bool angleFromRobotToPoint(const geometry_msgs::Point &position, double orientation, const geometry_msgs::Point &point, double& angle);

    bool isPathUpFront(geometry_msgs::Point& position, double orientation, std::vector<geometry_msgs::Point>& path, int& pathIntersectionIndex);

    void resetObstacleDetection();

    bool toFarAwayFromPath(geometry_msgs::Point& position, std::vector<geometry_msgs::Point>& path, double range);

    bool doIntersect(geometry_msgs::Point p1, geometry_msgs::Point q1, geometry_msgs::Point p2, geometry_msgs::Point q2);

    int rotation(geometry_msgs::Point p, geometry_msgs::Point q, geometry_msgs::Point r);
    
    bool onSegment(geometry_msgs::Point p, geometry_msgs::Point q, geometry_msgs::Point r);
    
    bool doIHavePriority(const std::vector<auto_smart_factory::RobotHeartbeat>& robotsHeartbeats_,
                         const std::string &id_,
                         const geometry_msgs::Point &pos_,
                         const double range_,
                         bool &priority_);
    ///////////////////////////////////////CHANGABLES (all ranges in meters, all angles in radians)//////////////////////////////
    //TODO - put these ranges into ros parameters

    // how many seconds to wait between detecting the obstacle and actually avoiding it
    double obstWaitTime = 1; //TODO make ros param

    // how many seconds to turn initially before going into obst edge following
    double initObstTurnTime = 1.5;
    /*
            Rules for setting the ranges:
            1.) safetyRange<distToKeep<drasticRange<avoidRange<outOfAvoidRange<analyzeRange
            2.) pathFindingRange<analyzeRange
    */
    // current analyze range
    double analyzeRange = 1.5; 

    // when obstacle is within this range of the robot, start avoiding procedures
    double avoidRange = 0.5;

    //if obstacle is further from robot then this tange, it is considered not to be avoided. Ideally this should be a bit larger then avoidRange to achieve the "hysteresis" effect
    double outOfAvoidRange = avoidRange+0.3;

    //when in obstacle edge following, distance under which an obstacle must be in order for robot to execute a drastic turn. This happens when obstacle is infront of robot
    double drasticRange = 0.35;

    // if obstacle is within this range, obstacle detection puts a safety flag on in motion planner
    double safetyRange = 0.15;

    // path point must be inside this range to be considered, when searching for path point straight ahead of the robot
    double pathFindingRange = 1.4;

    // distance the robot has to go away from the closest point in path while following obstacle edge to stop and request a new path
    double reqNewPathRange = 3.0;

    // when robot within this range of at least one of the points defined in nObstPoints vector, the safety stop and obstacle avoidance will not work
    double noObstRange = 1;

    //distance to keep from obstacle when following the edge of it. Distance is calculated by avaraging distances in Side Set
    double distToKeep = 0.4; 

    // when following the obstacle, laser points within this angle are considered for controlling the robot
    /*
                |this /
                |angle
                |   /  here the obsts are considered
                |  / 
                | /   
                |/__________
    
     */ //TODO make this represenatation more clear
    double obstFollowingAngle = (PI/6);

    double priorityRange = 1.0;
    ///////////////////////////////////////NON CHANGABLES////////////////////////////////////////////////////////////////////////


    /// id of the agent this obstacle detection instance belongs to
    std::string agentID;

    /// pointer to the motion planner instance
    MotionPlanner *motionPlanner;

    /// information about the role of the agent this obstacle detection instance belongs to
    auto_smart_factory::RobotConfiguration robotConfig;

    /// information about the current warehouse map
    auto_smart_factory::WarehouseConfiguration warehouseConfig;

    /// current information on hearthbeats of the robots
    std::vector<auto_smart_factory::RobotHeartbeat> *robotsHeartbeat;

    /// the build up occupancy grid matrix
    std::vector<std::vector<float>> occupancyGrid;

    /// Flag whether this obstacle is enabled or not
    bool enabled = false;

    /// current position of the robot
    geometry_msgs::Point position;

    /// current orientaition of the robot
    double orientation;

    // initalization of vector for saving the list for running avarage of how many laser points have been detected in the corridor
    std::vector<int> CorridorCountAvgList{std::vector<int>(5,10)};
    
    const double PI = 3.141592653589793238463;

    // init of ros time var
    ros::Time obstElapsedTime = ros::Time::now();

    bool obstInAvoidRange = 0;

    bool obstInAvoidRangePrev = 0;

    std::vector<geometry_msgs::Point> noObstPoints;

    double avoidSide = -1.0;

    geometry_msgs::Point prevAvoidLoc;

    bool myPackageStatus = false;

    int myOrder = 0;

};

#endif /* AUTO_SMART_FACTORY_SRC_OBSTACLEDETECTION_H_ */
