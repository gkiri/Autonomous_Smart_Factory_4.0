/*
 * ObstacleDetection.cpp
 *
 *  Modified on: 27.06.18.
 *
 */

#include "agent/ObstacleDetection.h"

ObstacleDetection::ObstacleDetection(std::string agent_id, MotionPlanner &motion_planner,
                                     auto_smart_factory::RobotConfiguration robot_config,
                                     auto_smart_factory::WarehouseConfiguration warehouse_config,
                                     std::vector<auto_smart_factory::RobotHeartbeat> &robots_heartbeat) {
    agentID = agent_id;
    robotConfig = robot_config;
    motionPlanner = &motion_planner;
    warehouseConfig = warehouse_config;
    robotsHeartbeat = &robots_heartbeat;

    //build grid matrix
    int index = 0;
    for (int i = 0; i < warehouseConfig.occupancy_map.info.height; i++) {
        std::vector<float> row;
        for (int j = 0; j < warehouseConfig.occupancy_map.info.width; j++) {
            row.push_back(warehouseConfig.occupancy_map.data[index]);
            index++;
        }
        occupancyGrid.push_back(row);
    }

    //check if all the ranges are properly sized
    if(analyzeRange<outOfAvoidRange && outOfAvoidRange<avoidRange && avoidRange<drasticRange && drasticRange<safetyRange && distToKeep>avoidRange){
        ROS_ERROR("One or multiple ranges in obstacle avoidance are set incorrectly! Obstacle avoidace might not work correctly");
    }
    if(analyzeRange<pathFindingRange){
        ROS_ERROR("pathFindingRange must not be bigger then analyzeRange");
    }

    //distance to keep from obstacle when following the edge of it. Distance is calculated by avaraging distances in Side Set
    double distToKeep = 0.25; 
    //initialize random seed for rand()
    srand(time(NULL));

    //no obst points are just 2 points: start tray and storage tray
    //TODO better documentation
    geometry_msgs::Point temo;
    noObstPoints.push_back(temo);
    noObstPoints.push_back(temo);
}

ObstacleDetection::~ObstacleDetection() {
}

double dist(double x1, double y1, double x2, double y2){
    return sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1));
}

void ObstacleDetection::update(geometry_msgs::Point &position, double orientation,
                               const sensor_msgs::LaserScan &msg) {

    this->position = position;
    this->orientation = orientation;


    // if robot in the range to at least one of the no obst points do not check safety or obstacle avoidance
    for(auto p:noObstPoints){
        if(dist(position.x,position.y,p.x,p.y)<noObstRange){
            // ROS_INFO("close to no obst point, not doing obsts");
            motionPlanner->setStaticObstacleDetected(0);
            motionPlanner->start();
            return;
        }
    }

    if (enabled && !motionPlanner->isDone()) {
        //dont analyse laser data when driving backwards or when obstacles are too far away
        if (!motionPlanner->isDrivingBackwards() && isRangeSmaller(analyzeRange, msg.ranges)) {
            analyzeLaserScan(position, orientation, msg);
        } else
            motionPlanner->start();
    }
}


/**
 * MAIN ANALYZE FUNCTION
 * 
 * 
 * 
 */

bool ObstacleDetection::analyzeLaserScan(geometry_msgs::Point& position, double orientation,
                                         const sensor_msgs::LaserScan& msg) {

    std::vector<geometry_msgs::Point> points = getPointList(position, orientation, msg);
    
    //get current path from motion planner
    std::vector<geometry_msgs::Point> path = motionPlanner->getCurrentPath();
    int path_index = motionPlanner->getPathIndex();

    // safety range check - stop the robot if any range is below a threshold
    //TODO - if in safety for a certain amount of time, what to do?
    if(isRangeSmaller(safetyRange, msg.ranges)){
        ROS_INFO("Inside safety range but not stopping");
        //motionPlanner->setSafetyStop(1);
        //motionPlanner->rotate(-1);
        //return true;
    }
    else{
        motionPlanner->setSafetyStop(0);
    }
    
    //CEHCKING IF OBSTACLE IS CLOSE ENOUGH TO BE AVOIDED
    int count = 0;
    if(!obstInAvoidRange){
        //if at least some amount of lidar points are inside avoid range, set obstacle as inside avoid range
        for(int i = 0; i<msg.ranges.size(); i++){
            if(msg.ranges[i]<avoidRange) {count++;}
            if(count>3) {
                obstInAvoidRange = 1;
            }
        }
    }
    //set flag that obstacle is not in avoid range if there is less then n lidar points inside the outOfAvoidRange
    else{
        for(auto range:msg.ranges){
            if(range<outOfAvoidRange) count++;
        }
        if(count<3){
            obstInAvoidRange = 0;
        }
    }

    //if obstacle has just arrived into avoid range, stop the motion planner and set the obstacle as detected
    if(obstInAvoidRange && !obstInAvoidRangePrev){
        motionPlanner->stop();
        motionPlanner->setStaticObstacleDetected(1);
        //remember the time this has happened as start of avoiding obstacles
        obstElapsedTime = ros::Time::now();
        
        //choose avoidance side randomly
        avoidSide = -1.0 + (double)(rand() % 2)*2; // TODO now only turning into one side. How to choose smartly which side to turn into?
        motionPlanner->stop();
    }

    //If obstacle has just gone out of the avoid range, set obstacle as not detected and start the motion planner
    if(!obstInAvoidRange && obstInAvoidRangePrev){
        motionPlanner->setStaticObstacleDetected(0);
        motionPlanner->start();
    }

    //save the previous state of obstInAvoidRange variable
    obstInAvoidRangePrev = obstInAvoidRange;

    //make shure that you dont go past this point (into active obstacle avoidance) if obstacle is not detected
    if(!obstInAvoidRange){return true;}


    //BEFORE GOING INTO OBSTACLE EDGE FOLLOWING CHECK IF YOU ARE NEAR ANOTHER ROBOT, IF YES, CHECK IF YOU HAVE THE PRIORITY TO AVOID THE OBSTACLE
    // flag into which the function writes if robot has the priority infront of all other robots
    bool IHavePriority = false;
    if(!doIHavePriority(*robotsHeartbeat, agentID, position, priorityRange, IHavePriority)){
        return false;
    }
    
    if(!IHavePriority){
        ROS_INFO("I dont have priority");
        motionPlanner->stop();
        return true;}

    //ROBOT TIME FUNCTIONS BEFORE GOING INTO OBSTACLE EDGE FOLLOWING

    double now = ros::Time::now().toSec();
    
    // after detecting the obstacle, wait for a period of time to see if it moves away by itself
    if((now-obstElapsedTime.toSec())<obstWaitTime){
        ROS_INFO("Waiting %lf seconds before obstacle avoiding.", obstWaitTime-(now-obstElapsedTime.toSec()));
        motionPlanner->stop();
        return true;
    }

    // always before executing behaviour, make sure motion planner is enabled
    motionPlanner->start();

    //Initially turn to enter obstacle avoidance at some angle
    //TODO make initial turn at angle, not at time
    if((now-obstElapsedTime.toSec())<initObstTurnTime + obstWaitTime){
        motionPlanner->setObstTurnMultiplier(avoidSide);
        ROS_INFO("Turning initially for %lf seconds.", initObstTurnTime + obstWaitTime -(now-obstElapsedTime.toSec()));
        return true;
    }

    //CHECKING IF THERE IS FREE LINE OF SIGHT FROM ROBOT TO PATH

    int pathIntersectionIndex = 0;
    //first check if there is any part of path in front of the robot (also inside analyze range)
    //if there is, save the index of the path for further use
    bool ispathUpfront = isPathUpFront(position, orientation, path, pathIntersectionIndex);

    // ROS_INFO("Towards Path?: %i", ispathUpfront);

    //if there is path infront of robot, check if there is free corridor from robot to that part of the path (looking at lidar data)
    if(ispathUpfront){
        bool corridorEmpty = 0;
        if(!isCorridorEmpty(position, orientation, path[pathIntersectionIndex], 0.5, analyzeRange, 2, msg, corridorEmpty)){return false;}
        
        if(corridorEmpty){
            ROS_INFO("Corridor towards path is empty, continiouing the path following");
            //set motion planner to follow path from this index of the path
            motionPlanner->setPathIndex(pathIntersectionIndex);
            //set that obstacle is not detected any more in motion planner to continiue following the path
            motionPlanner->setStaticObstacleDetected(0);
            //TODO add explanation
            motionPlanner->setApproachPathParameters(position, path[pathIntersectionIndex]);
            return true;
        }    
    }

    // if(toFarAwayFromPath(position, path, reqNewPathRange)){
    //     ROS_INFO("Robot went to far away from original path when avoiding obstacle. TODO: request new path. Continiuing following the obstacle");
    // }

    //FOLLOWING THE EDGE OF AN OBSTACLE

    int sizeOfObstStraight = 0; //number of laser rays that are detected as obstacle
    int sizeOfObstSide = 0; //number of laser rays that are detected as obstacle
    
    //vector that saves 5 closes points. Initialized with 5.0m at the beginning
    std::vector<double> closestSidePoints(5,5.0);

    std::vector<double> side_set_x;
    std::vector<double> side_set_y;
    
    // go through all euclidian points
    for(int i = 0; i<points.size(); i++){
        // if they are marked as valid
        if(points[i].z != -1){
            double angl = i*msg.angle_increment+msg.angle_min;

            // if current point has an angle that is on avoiding side AND the angle is large (looking at side of robot)
            if(angl*float(avoidSide)<0){          
                if(fabs(angl)>obstFollowingAngle){
                    sizeOfObstSide++;

                    //save only the closest few (size of clocestPoints) points
                    if(msg.ranges[i]<closestSidePoints.back()) {closestSidePoints[closestSidePoints.size()-1]=msg.ranges[i];}
                    sort(closestSidePoints.begin(), closestSidePoints.end());
                    
                }
                else if (msg.ranges[i]<drasticRange){
                    sizeOfObstStraight++;
                }
            }
        }
    }

    if(sizeOfObstStraight>2){
        // ROS_INFO("Drastic turning");
        motionPlanner->setObstTurnMultiplier(avoidSide);
        return true;
    }
        
    if(sizeOfObstSide > 2){
        double avgDist = 0;
        for(auto x:closestSidePoints){
            if(x!=5.0) avgDist+=x;}
        avgDist = avgDist/closestSidePoints.size();

        motionPlanner->setObstTurnMultiplier(-avoidSide*(avgDist-distToKeep)*8); //TODO as parameter
        // ROS_INFO("correction");
    }
    else{
        motionPlanner->setObstTurnMultiplier(-avoidSide);
        // ROS_INFO("turning");
    }
}

bool ObstacleDetection::isRangeSmaller(double distance, std::vector<float> ranges) {
    for (int i = 0; i < ranges.size(); i++)
        if (ranges[i] < distance)
            return true;
    return false;
}

bool ObstacleDetection::isCorridorEmpty(const geometry_msgs::Point &start, double orientation, const geometry_msgs::Point &end, double width, double range, int pointsThresh, const sensor_msgs::LaserScan &laser, bool& empty){    
    double angle = 0;
    if(!angleFromRobotToPoint(start, orientation, end, angle)){return false;}

    ROS_INFO("angle: %lf, low: %lf, high: %lf", angle, angle-(width/2), angle+(width/2));

    // if angle from robot to point is out of lidar seeing range return that corridor is not empty
    if(angle<laser.angle_min || angle>laser.angle_max){
        empty = false;
        return true;
    }

    int count = 0;
    if(!pointsInsideLaserAngle(laser, angle-(width/2), angle+(width/2), range, count)){return false;}

    // CorridorCountAvgList.insert(CorridorCountAvgList.begin(), count);
    // CorridorCountAvgList.pop_back();

    // ROS_INFO("count before: %i", count);

    // count = 0;
    // for(auto i:CorridorCountAvgList) count+=i;
    // count=int(count/CorridorCountAvgList.size()); 

    // ROS_INFO("count after: %i", count);

    if(count<pointsThresh) {empty = true;}
    else {empty = false;}

    return true;

}

bool ObstacleDetection::doIHavePriority(const std::vector<auto_smart_factory::RobotHeartbeat>& robotsHeartbeats_,
                                        const std::string &id_,
                                        const geometry_msgs::Point &pos_,
                                        const double range_,
                                        bool &priority_){


    if(robotsHeartbeats_.size()<=0){
        priority_ = true;
        return true;
    }

    bool iHavePriority = true;
    int robotOrder = 0;
    // go thru the list of heartbeats of all registered robots (this list is already alphabetically ordered)
    for(auto p:robotsHeartbeats_){
        //when you find agents own id, only update status of package and order in saved vector
        if(p.id.compare(id_)==0){
            myPackageStatus = p.with_package;
            myOrder = robotOrder;
        }
        //when its other robots, check if you are inside range
        else if(dist(pos_.x, pos_.y,p.position.x,p.position.y)<range_){
            if(p.idle==1){
                ROS_INFO("%s is idle, i should have priority", p.id.c_str());
                iHavePriority = true;}
            else if(myOrder<robotOrder){iHavePriority = false;}
            /*//if you are near a robot which has the same package status as you
            if(myPackageStatus == p.with_package){
                //check the order you are saved in the vector in, if your order is lower, the other robot has the priority
                if(myOrder<robotOrder){iHavePriority = false;}
            }
            //if you carry a package and the other robot does not, the other robot has the priority
            else if(p.with_package==false && myPackageStatus==true){iHavePriority = false;}*/
        }
        //iterate the robot order
        robotOrder++;
    }

    priority_ = iHavePriority;
    return true;

    
}

bool ObstacleDetection::angleFromRobotToPoint(const geometry_msgs::Point &position, double orientation, const geometry_msgs::Point &point, double& angle){
    // if position of robot and required point are the same, return angle 0 and no error
    if(position.x == point.x && position.y == point.y){
        angle = 0;
        ROS_DEBUG("ObstacleDetection::angleFromRobotToPoint: position and point are the same. That is a bit wierd. Returning angle 0");
        return true;
    }
    if(fabs(orientation)>PI){
        ROS_ERROR("ObstacleDetection::angleFromRobotToPoint: orientation must not be bigger then PI.");
        return false;
    }

    double dy1 = point.y - position.y;
    double dx1 = point.x - position.x;

    // calculate angle difference btw robot orientation and line connecting robot and end point
    double start_to_end_ang = atan2(dy1,dx1);
    double ang_diff=start_to_end_ang-orientation;
    if (ang_diff> PI)
        ang_diff -= 2*PI;
    else if (ang_diff < -PI)
        ang_diff += 2*PI;

    angle = ang_diff;
    return true;
}

bool ObstacleDetection::pointsInsideLaserAngle(const sensor_msgs::LaserScan &laser, double start_angle, double stop_angle, double range, int& numOfPoints){
    if(start_angle>stop_angle){
        ROS_ERROR("ObstacleDetection::pointsInsideAngle: start_angle should not be larger then stop angle");
        return false;
    }
    if(start_angle<laser.angle_min){
        ROS_INFO("ObstacleDetection::pointsInsideAngle: start_angle should not be smaller then min angle of lidar. Setting in to min lidar angle");
        start_angle = laser.angle_min;
    }
    if(stop_angle>laser.angle_max){
        ROS_INFO("ObstacleDetection::pointsInsideAngle: stop_angle should not be larger then max angle of lidar. Setting in to max lidar angle");
        stop_angle = laser.angle_max;
    }
    if(range<0){
        ROS_ERROR("ObstacleDetection::pointsInsideAngle: range should not be negative");
        return false;
    }

    int numOfPointsInsideAngle = 0;
    for(int i=0; i<laser.ranges.size();i++){
        double ang = laser.angle_min+((double)i * laser.angle_increment);
        if(ang>start_angle && ang<stop_angle){
            if(laser.ranges[i]<range){numOfPointsInsideAngle++;}
        }
    }
    numOfPoints = numOfPointsInsideAngle;
    return true;
}

std::vector<geometry_msgs::Point> ObstacleDetection::polarToEucledian(const sensor_msgs::LaserScan &msg) {
    std::vector<geometry_msgs::Point> points;

    for (int i = 0; i < msg.ranges.size(); i++) {
        geometry_msgs::Point p;
        if (msg.ranges[i] < analyzeRange) {
            double real_orientation = msg.angle_min+(i * msg.angle_increment);
            p.x = cos(real_orientation) * msg.ranges[i];
            p.y = sin(real_orientation) * msg.ranges[i];
            p.z = 0.0;
        } else
            p.z = -1;
        points.push_back(p);
    }
    return points;
}

double angDiff(double ang1, double ang2){
    return 0;
}

bool ObstacleDetection::onSegment(geometry_msgs::Point p, geometry_msgs::Point q, geometry_msgs::Point r){ 
    if (q.x <= std::max(p.x, r.x) && q.x >= std::min(p.x, r.x) && 
        q.y <= std::max(p.y, r.y) && q.y >= std::min(p.y, r.y)) 
       return true; 
    return false; 
} 
  
// To find orientation of ordered triplet (p, q, r). 
// The function returns following values 
// 0 --> p, q and r are colinear 
// 1 --> Clockwise 
// 2 --> Counterclockwise 
int ObstacleDetection::rotation(geometry_msgs::Point p, geometry_msgs::Point q, geometry_msgs::Point r) { 
    // See https://www.geeksforgeeks.org/orientation-3-ordered-points/ 
    // for details of below formula. 
    int val = (q.y - p.y) * (r.x - q.x) - 
              (q.x - p.x) * (r.y - q.y); 
  
    if (val == 0) return 0;  // colinear 
  
    return (val > 0)? 1: 2; // clock or counterclock wise 
} 
  
// The main function that returns true if line segment 'p1q1' 
// and 'p2q2' intersect. 
bool ObstacleDetection::doIntersect(geometry_msgs::Point p1, geometry_msgs::Point q1, geometry_msgs::Point p2, geometry_msgs::Point q2) { 
    // Find the four orientations needed for general and 
    // special cases 
    int o1 = rotation(p1, q1, p2); 
    int o2 = rotation(p1, q1, q2); 
    int o3 = rotation(p2, q2, p1); 
    int o4 = rotation(p2, q2, q1); 
  
    // General case 
    if (o1 != o2 && o3 != o4) 
        return true; 
  
    // Special Cases 
    // p1, q1 and p2 are colinear and p2 lies on segment p1q1 
    if (o1 == 0 && onSegment(p1, p2, q1)) return true; 
  
    // p1, q1 and q2 are colinear and q2 lies on segment p1q1 
    if (o2 == 0 && onSegment(p1, q2, q1)) return true; 
  
    // p2, q2 and p1 are colinear and p1 lies on segment p2q2 
    if (o3 == 0 && onSegment(p2, p1, q2)) return true; 
  
     // p2, q2 and q1 are colinear and q1 lies on segment p2q2 
    if (o4 == 0 && onSegment(p2, q1, q2)) return true; 
  
    return false; // Doesn't fall in any of the above cases 
} 

bool ObstacleDetection::isPathUpFront(geometry_msgs::Point& position, double orientation, std::vector<geometry_msgs::Point>& path, int& pathIntersectionIndex){
    //set index to -1 by default
    pathIntersectionIndex = -1;
    
    //check if path size if large enough
    if(path.size()<2){
        ROS_ERROR("Given path is shorter then 2 segments, cannot determine if path is infront of robot. Returning false.");
        return false;
    }

    //calculate the coordinates if the point infront of the robot (pathFindingRange away)
    geometry_msgs::Point pointInfront;
    double dx = cos(orientation)*pathFindingRange;
    double dy = sin(orientation)*pathFindingRange;
    pointInfront.x = position.x+dx;
    pointInfront.y = position.y+dy;

    // ROS_INFO("(%lf, %lf) \n  (%lf, %lf)", position.x, position.y, pointInfront.x, pointInfront.y);

    //go thru all the points in path
    for(int i = 1; i<path.size(); i++){
        //CHECK IF line from robot to calculated point AND line from previous and next path points INTERSECT 
        if(doIntersect(position, pointInfront, path[i-1], path[i])){
            //if they intersect, save the index of the appropriate path point
            pathIntersectionIndex = i;
            return true;
        }
        // ROS_INFO("(%lf, %lf) \n", path[i-1].x, path[i-1].y);
    }
    
    return false;
}

bool ObstacleDetection::toFarAwayFromPath(geometry_msgs::Point& position, std::vector<geometry_msgs::Point>& path, double range){
     //check if path size if large enough
    if(path.size()<=0){
        ROS_ERROR("Given path is empty, returning false;");
        return false;
    }

    for(auto p:path){
        double dx = p.x-position.x;
        double dy = p.y-position.y;
        if(((dx*dx)+(dy*dy))<range*range){
            return false;
        }
    }
    return true;
}

/*
 * if some point is irrelevant then p.z is set to -1
 */
std::vector<geometry_msgs::Point> ObstacleDetection::getPointList(geometry_msgs::Point position,
                                                                 double orientation,
                                                                 const sensor_msgs::LaserScan &msg) {
    std::vector<geometry_msgs::Point> points;
    double min_laser_orientation = orientation + (msg.angle_min);

    //calculate position of the laser
    double laser_rel_x = 0.2;
    position.x = position.x + cos(orientation) * laser_rel_x;
    position.y = position.y + sin(orientation) * laser_rel_x;
    for (int i = 0; i < msg.ranges.size(); i++) {
        geometry_msgs::Point p;
        if (msg.ranges[i] < analyzeRange) {
            double real_orientation = min_laser_orientation + (i * msg.angle_increment);

            if (real_orientation > PI)
                real_orientation -= 2*PI;
            else if (real_orientation < -PI)
                real_orientation += 2*PI;

            p.x = position.x + cos(real_orientation) * msg.ranges[i];
            p.y = position.y + sin(real_orientation) * msg.ranges[i];
            p.z = 0.0;
        } else
            p.z = -1;
        points.push_back(p);
    }
    return points;
}


void ObstacleDetection::resetObstacleDetection(){
    
}


void ObstacleDetection::setInputTray(auto_smart_factory::Tray it){
    noObstPoints[0].x = it.x;
    noObstPoints[0].y = it.y;
}

void ObstacleDetection::setOutputTray(auto_smart_factory::Tray ot){
    noObstPoints[1].x = ot.x;
    noObstPoints[1].y = ot.y;
}


void ObstacleDetection::enable(bool enable) {
    enabled = enable;
}

bool ObstacleDetection::isEnabled() {
    return enabled;
}