;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::InitTaskPlanner)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'InitTaskPlanner (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::INITTASKPLANNER")
  (make-package "AUTO_SMART_FACTORY::INITTASKPLANNER"))
(unless (find-package "AUTO_SMART_FACTORY::INITTASKPLANNERREQUEST")
  (make-package "AUTO_SMART_FACTORY::INITTASKPLANNERREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::INITTASKPLANNERRESPONSE")
  (make-package "AUTO_SMART_FACTORY::INITTASKPLANNERRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::InitTaskPlannerRequest
  :super ros::object
  :slots (_warehouse_configuration _robot_configurations _package_configurations ))

(defmethod auto_smart_factory::InitTaskPlannerRequest
  (:init
   (&key
    ((:warehouse_configuration __warehouse_configuration) (instance auto_smart_factory::WarehouseConfiguration :init))
    ((:robot_configurations __robot_configurations) (let (r) (dotimes (i 0) (push (instance auto_smart_factory::RobotConfiguration :init) r)) r))
    ((:package_configurations __package_configurations) (let (r) (dotimes (i 0) (push (instance auto_smart_factory::PackageConfiguration :init) r)) r))
    )
   (send-super :init)
   (setq _warehouse_configuration __warehouse_configuration)
   (setq _robot_configurations __robot_configurations)
   (setq _package_configurations __package_configurations)
   self)
  (:warehouse_configuration
   (&rest __warehouse_configuration)
   (if (keywordp (car __warehouse_configuration))
       (send* _warehouse_configuration __warehouse_configuration)
     (progn
       (if __warehouse_configuration (setq _warehouse_configuration (car __warehouse_configuration)))
       _warehouse_configuration)))
  (:robot_configurations
   (&rest __robot_configurations)
   (if (keywordp (car __robot_configurations))
       (send* _robot_configurations __robot_configurations)
     (progn
       (if __robot_configurations (setq _robot_configurations (car __robot_configurations)))
       _robot_configurations)))
  (:package_configurations
   (&rest __package_configurations)
   (if (keywordp (car __package_configurations))
       (send* _package_configurations __package_configurations)
     (progn
       (if __package_configurations (setq _package_configurations (car __package_configurations)))
       _package_configurations)))
  (:serialization-length
   ()
   (+
    ;; auto_smart_factory/WarehouseConfiguration _warehouse_configuration
    (send _warehouse_configuration :serialization-length)
    ;; auto_smart_factory/RobotConfiguration[] _robot_configurations
    (apply #'+ (send-all _robot_configurations :serialization-length)) 4
    ;; auto_smart_factory/PackageConfiguration[] _package_configurations
    (apply #'+ (send-all _package_configurations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; auto_smart_factory/WarehouseConfiguration _warehouse_configuration
       (send _warehouse_configuration :serialize s)
     ;; auto_smart_factory/RobotConfiguration[] _robot_configurations
     (write-long (length _robot_configurations) s)
     (dolist (elem _robot_configurations)
       (send elem :serialize s)
       )
     ;; auto_smart_factory/PackageConfiguration[] _package_configurations
     (write-long (length _package_configurations) s)
     (dolist (elem _package_configurations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; auto_smart_factory/WarehouseConfiguration _warehouse_configuration
     (send _warehouse_configuration :deserialize buf ptr-) (incf ptr- (send _warehouse_configuration :serialization-length))
   ;; auto_smart_factory/RobotConfiguration[] _robot_configurations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_configurations (let (r) (dotimes (i n) (push (instance auto_smart_factory::RobotConfiguration :init) r)) r))
     (dolist (elem- _robot_configurations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; auto_smart_factory/PackageConfiguration[] _package_configurations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _package_configurations (let (r) (dotimes (i n) (push (instance auto_smart_factory::PackageConfiguration :init) r)) r))
     (dolist (elem- _package_configurations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass auto_smart_factory::InitTaskPlannerResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::InitTaskPlannerResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass auto_smart_factory::InitTaskPlanner
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::InitTaskPlanner :md5sum-) "457bcc02d6514ff034af081794e7a4f3")
(setf (get auto_smart_factory::InitTaskPlanner :datatype-) "auto_smart_factory/InitTaskPlanner")
(setf (get auto_smart_factory::InitTaskPlanner :request) auto_smart_factory::InitTaskPlannerRequest)
(setf (get auto_smart_factory::InitTaskPlanner :response) auto_smart_factory::InitTaskPlannerResponse)

(defmethod auto_smart_factory::InitTaskPlannerRequest
  (:response () (instance auto_smart_factory::InitTaskPlannerResponse :init)))

(setf (get auto_smart_factory::InitTaskPlannerRequest :md5sum-) "457bcc02d6514ff034af081794e7a4f3")
(setf (get auto_smart_factory::InitTaskPlannerRequest :datatype-) "auto_smart_factory/InitTaskPlannerRequest")
(setf (get auto_smart_factory::InitTaskPlannerRequest :definition-)
      "WarehouseConfiguration warehouse_configuration
RobotConfiguration[] robot_configurations
PackageConfiguration[] package_configurations

================================================================================
MSG: auto_smart_factory/WarehouseConfiguration
# dimensions of the map in meters
float32 width
float32 height

# Info about the trays
Tray[] trays

# Info about the walls
Wall[] walls

# Info about the tray geometry
TrayGeometry tray_geometry

# Info about the wall geometry
WallGeometry wall_geometry

# The occupancy map of the warehouse
nav_msgs/OccupancyGrid occupancy_map

# The package pool
PackagePool package_pool

# Robots in this warehouse
Robot[] robots

# Idle positions of the robots
IdlePosition[] idle_positions


================================================================================
MSG: auto_smart_factory/Tray
# The representation of a warehouse tray

# the unique identifier of this tray
uint32 id

# the type of the tray. Valid values: 'input', 'output' and 'storage'
string type

# the coordinates of the center of the tray in the '/map' frame
float32 x
float32 y

# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.
float32 orientation

# maximum load, i.e. the maximum weight of packages to be put into this tray
float32 max_load

# package type this tray can carry. 0 means no constraints.
uint32 package_type

================================================================================
MSG: auto_smart_factory/Wall
# The representation of a warehouse wall

# the coordinates of the center of the wall in the '/map' frame
float32 x
float32 y

# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.
float32 orientation



================================================================================
MSG: auto_smart_factory/TrayGeometry
# Info about the tray geometry
float32 width
float32 height


================================================================================
MSG: auto_smart_factory/WallGeometry
# Info about the wall geometry
float32 width
float32 height


================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: auto_smart_factory/PackagePool
# Drop location: The 3D point where packages can be dropped to be placed in the container.
geometry_msgs/Point32 drop_location

# Stacking area: Area where packages can be stacked at the beginning
geometry_msgs/Point32[2] stacking_area


================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: auto_smart_factory/Robot
# id of this robot
string id

# type name of this robot
string type


================================================================================
MSG: auto_smart_factory/IdlePosition
# unique robot id/name
string id

# idle pose, yaw angle in degree
geometry_msgs/Pose2D pose


================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: auto_smart_factory/RobotConfiguration
# name of this robot type
string type_name

# charging rate of the battery
float32 charging_rate

# discharging rate of the battery
float32 discharging_rate

# minimum linear velocity in [m/s]
float32 min_linear_vel

# maximum linear velocity in [m/s]
float32 max_linear_vel

# maximum angular velocity in [rad/s]
float32 max_angular_vel

# maximum radius of the robot
float32 radius

# maximum package weight in [kg]
float32 max_load

================================================================================
MSG: auto_smart_factory/PackageConfiguration
# package type id (!= package id)
uint32 id

# package dimensions
float32 width
float32 height

# package weight
float32 weight

---
bool success

")

(setf (get auto_smart_factory::InitTaskPlannerResponse :md5sum-) "457bcc02d6514ff034af081794e7a4f3")
(setf (get auto_smart_factory::InitTaskPlannerResponse :datatype-) "auto_smart_factory/InitTaskPlannerResponse")
(setf (get auto_smart_factory::InitTaskPlannerResponse :definition-)
      "WarehouseConfiguration warehouse_configuration
RobotConfiguration[] robot_configurations
PackageConfiguration[] package_configurations

================================================================================
MSG: auto_smart_factory/WarehouseConfiguration
# dimensions of the map in meters
float32 width
float32 height

# Info about the trays
Tray[] trays

# Info about the walls
Wall[] walls

# Info about the tray geometry
TrayGeometry tray_geometry

# Info about the wall geometry
WallGeometry wall_geometry

# The occupancy map of the warehouse
nav_msgs/OccupancyGrid occupancy_map

# The package pool
PackagePool package_pool

# Robots in this warehouse
Robot[] robots

# Idle positions of the robots
IdlePosition[] idle_positions


================================================================================
MSG: auto_smart_factory/Tray
# The representation of a warehouse tray

# the unique identifier of this tray
uint32 id

# the type of the tray. Valid values: 'input', 'output' and 'storage'
string type

# the coordinates of the center of the tray in the '/map' frame
float32 x
float32 y

# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.
float32 orientation

# maximum load, i.e. the maximum weight of packages to be put into this tray
float32 max_load

# package type this tray can carry. 0 means no constraints.
uint32 package_type

================================================================================
MSG: auto_smart_factory/Wall
# The representation of a warehouse wall

# the coordinates of the center of the wall in the '/map' frame
float32 x
float32 y

# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.
float32 orientation



================================================================================
MSG: auto_smart_factory/TrayGeometry
# Info about the tray geometry
float32 width
float32 height


================================================================================
MSG: auto_smart_factory/WallGeometry
# Info about the wall geometry
float32 width
float32 height


================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: auto_smart_factory/PackagePool
# Drop location: The 3D point where packages can be dropped to be placed in the container.
geometry_msgs/Point32 drop_location

# Stacking area: Area where packages can be stacked at the beginning
geometry_msgs/Point32[2] stacking_area


================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: auto_smart_factory/Robot
# id of this robot
string id

# type name of this robot
string type


================================================================================
MSG: auto_smart_factory/IdlePosition
# unique robot id/name
string id

# idle pose, yaw angle in degree
geometry_msgs/Pose2D pose


================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: auto_smart_factory/RobotConfiguration
# name of this robot type
string type_name

# charging rate of the battery
float32 charging_rate

# discharging rate of the battery
float32 discharging_rate

# minimum linear velocity in [m/s]
float32 min_linear_vel

# maximum linear velocity in [m/s]
float32 max_linear_vel

# maximum angular velocity in [rad/s]
float32 max_angular_vel

# maximum radius of the robot
float32 radius

# maximum package weight in [kg]
float32 max_load

================================================================================
MSG: auto_smart_factory/PackageConfiguration
# package type id (!= package id)
uint32 id

# package dimensions
float32 width
float32 height

# package weight
float32 weight

---
bool success

")



(provide :auto_smart_factory/InitTaskPlanner "457bcc02d6514ff034af081794e7a4f3")

