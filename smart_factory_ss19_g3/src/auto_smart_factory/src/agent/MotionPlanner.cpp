/*
 * MotionPlanner.cpp
 *
 *  Modified on: 27.06.18.
 *
 */

#include <agent/MotionPlanner.h>
#include <agent/bezier.h>
#include <agent/bezier_adapter.h>


MotionPlanner::MotionPlanner(std::string agent_id,auto_smart_factory::RobotConfiguration robot_config, ros::Publisher *motion_pub, ros::Publisher *path_pub) {
    robotConfig = robot_config;
    drivingMinSpeed = robotConfig.min_linear_vel;
    drivingMaxSpeed = robotConfig.max_linear_vel;
    turningMaxSpeed = robotConfig.max_angular_vel;

    motionPub = motion_pub;
    pathPub = path_pub;
    agentID = agent_id;
    std::stringstream ss;
    ss << "/motion_planner_" << agentID << "/activate_tests";
    test_enable_paramStr = ss.str();
    ros::param::set(test_enable_paramStr, tests_enabled); // false by default
    MotionPlanner::enable(true);
    integral=0;
    pre_error=0;
    global_path_index=0;

    Current_Backward_Point.x=0;
    Current_Backward_Point.y=0;

    Last_Backward_Point.x=0;
    Last_Backward_Point.y=0;

    Last_Before_Backward_Point.x=0;
    Last_Before_Backward_Point.y=0;

    
    
}

MotionPlanner::~MotionPlanner() {
}

void MotionPlanner::update(geometry_msgs::Point position, double orientation) {
    // PublishPath(path, index, path.size());

    #if 1
    //path = createDebugPath();
    //publish the path you are following for debug

    if(safetyStop) {
        stop();
        return;
    }

    if(staticObstacleDetected){
        avoidObstacle();
        return;
    }
    #endif

    #if 1
    bool prev_test_enable = tests_enabled;
    ros::param::get(test_enable_paramStr, tests_enabled);
    if(enabled || tests_enabled) { // if "enabled" by the operation or "test_enable" is triggered
        if(tests_enabled){ // if test enable, the robot will only be controlled with manual commands
            if(!prev_test_enable) // if tests are just enabled, first stop the prev motion command
                stop();
            start();
        }
        else if(!done && !standStill)
            done = driveCurrentPath(position, orientation);
        else
            stop();
    }
    #endif
}

// This function is called by Plan.cpp class to indicate that there is a new path planned
void MotionPlanner::newPath(geometry_msgs::Point start_position, std::vector<geometry_msgs::Point> new_path,
                            geometry_msgs::Point end_direction_point, bool drive_backwards) {
    startPosition = start_position;
    driveBackwards = drive_backwards;
    path=new_path;
    std::vector<geometry_msgs::Point> Back_Path;
    geometry_msgs::Point Back_point;
    //ROS_INFO("SIZE OF THE PATH INSIDE THE OTHER FN : %d ,endpoint=(%f,%f)",(int)path.size(),path[path.size()-1].x,path[path.size()-1].y);
    //ROS_INFO("GKKKKKKKKKKIRI----POSITION : (%lf,%lf)",position.x,position.y);

    Last_Before_Backward_Point=Last_Backward_Point;
    Last_Backward_Point=Current_Backward_Point;
    Current_Backward_Point=new_path[new_path.size()-1];//Remember Last Path Point

    //ROS_INFO("GKKKKKKKKKKIRI----Last_Before_Backward_Point : (%lf,%lf)",Last_Before_Backward_Point.x,Last_Before_Backward_Point.y);
    //ROS_INFO("GKKKKKKKKKKIRI----Last_Before_Backward_Point : (%lf,%lf)",Last_Backward_Point.x,Last_Backward_Point.y);
    //ROS_INFO("GKKKKKKKKKKIRI----start_position : (%lf,%lf)",start_position.x,start_position.y);

    if(driveBackwards)
    {

       if( ((Last_Backward_Point.y-9.25)<=0.25  && (Last_Backward_Point.y-9.25)>=0) || ((Last_Backward_Point.y-14.25)<=0.25  && (Last_Backward_Point.y-14.25)>=0) ) {
            ROS_INFO("GKKKKKKKKKKIRI---Section 1");
            Back_point.x=new_path[0].x;
            Back_point.y=new_path[0].y-0.25;
            Back_Path.push_back(Back_point);

            Back_point.x=new_path[0].x;
            Back_point.y=new_path[0].y-0.5;
            Back_Path.push_back(Back_point);

            Back_point.x=new_path[0].x;
            Back_point.y=new_path[0].y-0.75;
            Back_Path.push_back(Back_point);
       } else {
            ROS_INFO("GKKKKKKKKKKIRI---Section 2");
            Back_point.x=new_path[0].x;
            Back_point.y=new_path[0].y+0.25;
            Back_Path.push_back(Back_point);

            Back_point.x=new_path[0].x;
            Back_point.y=new_path[0].y+0.5;
            Back_Path.push_back(Back_point);

            Back_point.x=new_path[0].x;
            Back_point.y=new_path[0].y+0.75;
            Back_Path.push_back(Back_point);


       }



       new_path=Back_Path;//over write new_path //future make curve path
       ROS_INFO("Gkiri:newpath:Backwards: %d ,endpoint=(%f,%f)",(int)path.size(),path[path.size()-1].x,path[path.size()-1].y);
    }
    pathTo = path;
    //@TODO: Smoothing the path for driving
    // create a bezier spline interpolator
    std::vector<geometry_msgs::Point> smoothed_Path;
    std::vector<geometry_msgs::Point> tmpPath;
    std::vector<Bezier::Point> originControlPoints;

    //Converting geometry point to bezier point
    for(int i=0;i<new_path.size();i++){
        originControlPoints.push_back(Bezier::Point(new_path[i].x,new_path[i].y));
        //ROS_INFO("Gkiri:MotionPlanner:Geometry point X=%f ,Y=%f",new_path[i].x,new_path[i].y);//Gkiri
    }
    
    double time_begin =ros::Time::now().toSec();
    BezierAdapter bezierAdapter(originControlPoints);
    std::vector<Bezier::Point> bezierPoints = bezierAdapter.getBezierPoints();
    double time_end =ros::Time::now().toSec(); 
    
    //Converting bezier point to geometry point
    Bezier::Point Temp_bezpoint;
    geometry_msgs::Point Temp_point;
    for(int i=0;i<bezierPoints.size();i++){
        Temp_point.x=bezierPoints[i].x;
        Temp_point.y=bezierPoints[i].y;
        smoothed_Path.push_back(Temp_point);
        //ROS_INFO("Gkiri:MotionPlanner:Bezier point X=%f ,Y=%f",Temp_point.x,Temp_point.y);
    }

    int i =0;

        //reduces the number of points taken
    //for(auto p : smoothed_Path)
    geometry_msgs::Point Tenth_point;
    for(int k=0;k<smoothed_Path.size();k=k+10)
    {
            Tenth_point.x=smoothed_Path[k].x;
            Tenth_point.y=smoothed_Path[k].y;
            tmpPath.push_back(Tenth_point);
    }

    if(new_path.size()>1){ //if new path=1 we cant smooth so no bezier
        path=tmpPath;//SMOOTHED_PATH
    }else{
        path=new_path; //planned path from plan.cpp
    }   
    

    endDirectionPoint = end_direction_point;
    currentTargetIndex = 0;
    done = false;
    

    //Gkiri
    global_path_index=0;//assumed new path came
    start();
}

void MotionPlanner::enable(bool enable) {
    this->enabled = enable;
}

bool MotionPlanner::isEnabled() {
    return this->enabled;
}

bool MotionPlanner::isTestsEnabled(){ // adjusted through ros param
    return this->tests_enabled;
}

void MotionPlanner::start() {
    this->standStill = false;
}

void MotionPlanner::stop() {
    this->standStill = true;
    geometry_msgs::Twist motion;
    this->motionPub->publish(motion);
}

bool MotionPlanner::isDone() {
    return done;
}

bool MotionPlanner::isDrivingBackwards() {
    return driveBackwards;
}

double MotionPlanner::getDriveForwardDistanceAccuracy() {
    return driveForwardDistanceAccuracy;
}
double distTwo(double x1, double y1, double x2, double y2) {
    return sqrt(pow(x1 - x2, 2.0) + pow(y1 - y2, 2.0));
}


#if 1 //Illias
bool MotionPlanner::driveCurrentPath(geometry_msgs::Point position, double orientation)
{   
    PublishPath(path,0,0);
    geometry_msgs::Twist motion;
    double shortestDistance;
    int closestPointIndex = 0;
    geometry_msgs::Point closestPoint;
    double cte=0,kp=2.5,kd=80,angularVel;
    double dt=0.1;
    double Ki=0.1; //.01
    
    /*This override is not needed: If you want to adjust this,
    do it in configs->robot_config.json->Pioneer P3-DX->max_angular_vel/max_linear_vel
    and restart the launch (no recompiling needed) 
    drivingMaxSpeed = 0.7;
	drivingMinSpeed = 0.2;
    */

    shortestDistance = distNoRoot(position,path[0]);
    closestPoint = path[0];
    int index_ = 0;



    if(path.size()<1)
    {
        ROS_ERROR("GKKKKKKKKKKIRI--NULL PATH");
        return false;
    }

    //ROS_INFO("GKKKKKKKKKKIRI: global_path_index =%d path.size=%d",global_path_index,path.size()-1);
    //ROS_INFO("GKKKKKKKKKKIRI----POSITION : (%lf,%lf) End-path (%lf,%lf) ,dist_to_goal=%f",position.x,position.y,path[path.size()-1].x,path[path.size()-1].y,getDistance2(position , path[path.size()-1]));


    for(auto p : path)
    {
        if(shortestDistance>distNoRoot(p,position)){
            shortestDistance=distNoRoot(p,position);
            closestPoint = p;
            closestPointIndex = index_;
        }
        index_++;
    }

    //if( (global_path_index < (path.size()-1)) )
    if( (getDistance2(position , path[path.size()-1])<= (driveForwardDistanceAccuracy-0.15) ) )
    {
            MotionPlanner::stop();
//            ROS_INFO("GKKKKKKKKKKIRI---------stop (%lf,%lf)",position.x,position.y);
            motion.linear.x = 0; 
            motion.linear.y = 0; 
            motion.linear.z = 0;  

            motion.angular.x=0;
            motion.angular.y=0;
            motion.angular.z=0;

            lastError=0,dcte=0;

            reachedTheEnd = true;            
            // motionPub->publish(motion);
            publishRegMotion(motion);

    } else {

        //global_path_index++;//gkiri
        cte = -dist(position.x,position.y,path[closestPointIndex].x,path[closestPointIndex].y,path[closestPointIndex+1].x,path[closestPointIndex+1].y);
        cte = cte*sign(position,path[closestPointIndex],path[closestPointIndex+1]);
        

        if(pathApproachFlag){

            cte = -dist(position.x,position.y,approachStartPoint.x,approachStartPoint.y,approachEndPoint.x,approachEndPoint.y);
            cte = cte*sign(position,approachStartPoint,approachEndPoint);
            if(getDistance2(position , approachEndPoint)<= (driveForwardDistanceAccuracy-0.15)){
                pathApproachFlag = false;
            }
         }
         else
         {
            cte = -dist(position.x,position.y,path[closestPointIndex].x,path[closestPointIndex].y,path[closestPointIndex+1].x,path[closestPointIndex+1].y);
            cte = cte*sign(position,path[closestPointIndex],path[closestPointIndex+1]);
         }
         
        //Integral portion
        integral += dt*cte ;
        double Iout = Ki*integral;

        dcte=cte-lastError;
        lastError = cte;

        //angularVel = cte*kp+kd*dcte+Iout;
        angularVel = cte*kp+kd*dcte+Iout;

        if(distNoRoot(position,path[path.size()-1])<1) {
            drivingSpeed = 0.1+0.1*(sqrt(distNoRoot(position,path[path.size()-1]))/1.5);      
            drivingSpeed = 0.2;                    

        }
        else {
            drivingSpeed = drivingMaxSpeed;                    
        }
        if(driveBackwards){

//            ROS_INFO("GKKKKKKKKKKIRI---------driveBackwards %f",drivingSpeed);
            motion.linear.x = -drivingSpeed; 
            motion.linear.y = 0; 
            motion.linear.z = 0;  

            motion.angular.x=0;
            motion.angular.y=0;
            motion.angular.z = angularVel;
            
        } else {
            motion.linear.x = drivingSpeed; 
            motion.linear.y = 0; 
            motion.linear.z = 0;  

            motion.angular.x=0;
            motion.angular.y=0;
            motion.angular.z = angularVel;
        }

        // motionPub->publish(motion);
        publishRegMotion(motion);
        reachedTheEnd=false;

        
    }//endif global index

    return reachedTheEnd;     
    
}
#endif

double MotionPlanner::linear_vel(geometry_msgs::Point p1,geometry_msgs::Point p2,float kp)
{
    double vel;

    vel=sqrt(pow(p1.x - p2.x, 2.0) + pow(p1.y - p2.y, 2.0));

    return kp*vel;
}



double MotionPlanner::angular_vel(geometry_msgs::Point position,double orientation,float k_theta)
{
    double theta_angle;

    theta_angle=atan2((path[path.size() -1].y-position.y),(path[path.size() -1].x-position.x));

    double alpha1=theta_angle-orientation;
        
    if (alpha1 > PI)
        alpha1 -= 2*PI;
    else if (alpha1 < -PI)
        alpha1 += 2*PI;

    return alpha1;

}

double MotionPlanner::getDistance2(geometry_msgs::Point p1, geometry_msgs::Point p2) {
    return sqrt(pow(p1.x - p2.x, 2.0) + pow(p1.y - p2.y, 2.0));
}

bool MotionPlanner::avoidObstacle(){
    geometry_msgs::Twist motion;

    if(!standStill){   
        //linear vel when following obstacle is 20% of max robot forward speed
        if(fabs(obstAlignMultiplier) < 1) {motion.linear.x  = drivingMaxSpeed*0.2;}
        // motion.linear.x  = drivingMaxSpeed*0.2;
        //max angular speed is alignSlope percent of max turning speed
        motion.angular.z = turningMaxSpeed*0.7*obstAlignMultiplier;
    }
    publishRegMotion(motion);

    return false;
}
//written by Ilias & Janez
double MotionPlanner::distNoRoot(geometry_msgs::Point p1, geometry_msgs::Point p2)
{    return ((p1.x-p2.x)*(p1.x-p2.x)+(p1.y-p2.y)*(p1.y-p2.y));  }

void MotionPlanner::getLine(double x1, double y1, double x2, double y2, double &a, double &b, double &c)
{
       // (x- p1X) / (p2X - p1X) = (y - p1Y) / (p2Y - p1Y) 
       a = y1 - y2; 
       b = x2 - x1;
       c = x1 * y2 - x2 * y1;
}

double MotionPlanner::dist(double pct1X, double pct1Y, double pct2X, double pct2Y, double pct3X, double pct3Y)
{
     double a, b, c;
     getLine(pct2X, pct2Y, pct3X, pct3Y, a, b, c);
     return fabs(a * pct1X + b * pct1Y + c) / sqrt(a * a + b * b);
}


//Edition ends here
//TODO rename from slope to smthn else
void MotionPlanner::setObstTurnMultiplier(double mult){
    // ROS_INFO("multi: %lf", mult);
    if(fabs(mult)<1){
        this->obstAlignMultiplier = mult;
    }
    //if absolute(mult) is bigger then one and negative, set it to -1
    else if(mult<0){
        this->obstAlignMultiplier = -1;
    }
    //if absolute(mult) is bigger then one and positive, set it to 1
    else{
        this->obstAlignMultiplier = 1;
    }
}

std::vector<geometry_msgs::Point> MotionPlanner::getCurrentPath(){
    return path;
}

void MotionPlanner::PublishPath(std::vector<geometry_msgs::Point> p, int begin_index = 0, int end_index = 0){
    if(p.size()<1){
        // ROS_ERROR("Cannot visualize empty path.");
        return;
    }

    if(begin_index<0){
        // ROS_ERROR("Begin index is lower then 0, setting to 0.");    
        begin_index = 0;
    }

    if(begin_index>p.size()-1){
        //ROS_ERROR("Begin index is larger then the size of path. Setting to the size of path");
        begin_index = p.size()-1;

    } 

    if(end_index == 0 || end_index>p.size()-1){
        end_index = p.size()-1;
    } 
    
    nav_msgs::Path path_p;
    path_p.header.frame_id = "map";
    std::vector<geometry_msgs::PoseStamped> poses_p;

    for(int i=begin_index; i<end_index; i++){
        geometry_msgs::PoseStamped pose_p;
        pose_p.header.frame_id="map";
        pose_p.pose.position.x = p[i].x;
        pose_p.pose.position.y = p[i].y;
        poses_p.push_back(pose_p);
    }

    path_p.poses = poses_p;
    
    pathPub->publish(path_p);
}

std::vector<geometry_msgs::Point> MotionPlanner::createDebugPath(){
    std::vector<geometry_msgs::Point> testpath;
    geometry_msgs::Point TestPoint;
    for(int l = 0; l<20;l++){
        TestPoint.x = 10-((double)l/2.0);
        TestPoint.y = 6;
        testpath.push_back(TestPoint);
    }

    return testpath;
}

void MotionPlanner::setStaticObstacleDetected(bool _flag){
    this->staticObstacleDetected = _flag;    
}

void MotionPlanner::setSafetyStop(bool _flag){
    this->safetyStop = _flag;    
}

void MotionPlanner::setPathIndex(int _index){
    if(_index<0){
        ROS_WARN("Index to set is smaller then 0, setting it to 0");
        this->index = 0;
        return;
    }
    if(_index>path.size()){
        ROS_WARN("Index to set is bigger then path lenght. Setting it to last point");
        this->index = path.size()-1;
        return;
    }

    this->index = _index;
}
    int MotionPlanner::sign(geometry_msgs::Point robot,geometry_msgs::Point pointIndex,geometry_msgs::Point nextPointIndex){
        double ux = nextPointIndex.x-pointIndex.x;
        double uy = nextPointIndex.y-pointIndex.y;

        double vx = robot.x-pointIndex.x;
        double vy = robot.y-pointIndex.y;

        int result = (int)((ux*vy-uy*vx)/(fabs(ux*vy-uy*vx)));

    return result;

}

void MotionPlanner::setApproachPathParameters(geometry_msgs::Point start, geometry_msgs::Point end){
    approachStartPoint = start;
    approachEndPoint = end;
     pathApproachFlag = true;
}

int MotionPlanner::getPathIndex(){    return index;    }

void MotionPlanner::rotate(int side){
    if(side>0)side = 1;
    else{side=-1;}
    
    geometry_msgs::Twist motion;
    motion.angular.z = turningMaxSpeed * side;
    // motionPub->publish(motion);
    publishRegMotion(motion);
}

void MotionPlanner::publishRegMotion(const geometry_msgs::Twist &motion){
    geometry_msgs::Twist tempMotion;
    if(fabs(motion.linear.x)>drivingMaxSpeed){
        tempMotion.linear.x = (motion.linear.x/fabs(motion.linear.x))*drivingMaxSpeed;
    }
    else{
        tempMotion.linear.x = motion.linear.x;
    }
    if(fabs(motion.angular.z)>turningMaxSpeed){
        tempMotion.angular.z = (motion.angular.z/fabs(motion.angular.z))*turningMaxSpeed;
    }
    else{
        tempMotion.angular.z = motion.angular.z;
    }

    motionPub->publish(tempMotion);
}