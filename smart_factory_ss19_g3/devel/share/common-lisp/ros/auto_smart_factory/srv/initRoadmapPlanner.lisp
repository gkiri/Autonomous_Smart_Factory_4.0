; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude initRoadmapPlanner-request.msg.html

(cl:defclass <initRoadmapPlanner-request> (roslisp-msg-protocol:ros-message)
  ((warehouse_configuration
    :reader warehouse_configuration
    :initarg :warehouse_configuration
    :type auto_smart_factory-msg:WarehouseConfiguration
    :initform (cl:make-instance 'auto_smart_factory-msg:WarehouseConfiguration))
   (robot_configurations
    :reader robot_configurations
    :initarg :robot_configurations
    :type (cl:vector auto_smart_factory-msg:RobotConfiguration)
   :initform (cl:make-array 0 :element-type 'auto_smart_factory-msg:RobotConfiguration :initial-element (cl:make-instance 'auto_smart_factory-msg:RobotConfiguration))))
)

(cl:defclass initRoadmapPlanner-request (<initRoadmapPlanner-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <initRoadmapPlanner-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'initRoadmapPlanner-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<initRoadmapPlanner-request> is deprecated: use auto_smart_factory-srv:initRoadmapPlanner-request instead.")))

(cl:ensure-generic-function 'warehouse_configuration-val :lambda-list '(m))
(cl:defmethod warehouse_configuration-val ((m <initRoadmapPlanner-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:warehouse_configuration-val is deprecated.  Use auto_smart_factory-srv:warehouse_configuration instead.")
  (warehouse_configuration m))

(cl:ensure-generic-function 'robot_configurations-val :lambda-list '(m))
(cl:defmethod robot_configurations-val ((m <initRoadmapPlanner-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:robot_configurations-val is deprecated.  Use auto_smart_factory-srv:robot_configurations instead.")
  (robot_configurations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <initRoadmapPlanner-request>) ostream)
  "Serializes a message object of type '<initRoadmapPlanner-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'warehouse_configuration) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_configurations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robot_configurations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <initRoadmapPlanner-request>) istream)
  "Deserializes a message object of type '<initRoadmapPlanner-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'warehouse_configuration) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_configurations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_configurations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auto_smart_factory-msg:RobotConfiguration))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<initRoadmapPlanner-request>)))
  "Returns string type for a service object of type '<initRoadmapPlanner-request>"
  "auto_smart_factory/initRoadmapPlannerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'initRoadmapPlanner-request)))
  "Returns string type for a service object of type 'initRoadmapPlanner-request"
  "auto_smart_factory/initRoadmapPlannerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<initRoadmapPlanner-request>)))
  "Returns md5sum for a message object of type '<initRoadmapPlanner-request>"
  "fb9bffdfe2f4f2d0cadce15bb8c12ec2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'initRoadmapPlanner-request)))
  "Returns md5sum for a message object of type 'initRoadmapPlanner-request"
  "fb9bffdfe2f4f2d0cadce15bb8c12ec2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<initRoadmapPlanner-request>)))
  "Returns full string definition for message of type '<initRoadmapPlanner-request>"
  (cl:format cl:nil "WarehouseConfiguration warehouse_configuration~%RobotConfiguration[] robot_configurations~%~%================================================================================~%MSG: auto_smart_factory/WarehouseConfiguration~%# dimensions of the map in meters~%float32 width~%float32 height~%~%# Info about the trays~%Tray[] trays~%~%# Info about the walls~%Wall[] walls~%~%# Info about the tray geometry~%TrayGeometry tray_geometry~%~%# Info about the wall geometry~%WallGeometry wall_geometry~%~%# The occupancy map of the warehouse~%nav_msgs/OccupancyGrid occupancy_map~%~%# The package pool~%PackagePool package_pool~%~%# Robots in this warehouse~%Robot[] robots~%~%# Idle positions of the robots~%IdlePosition[] idle_positions~%~%~%================================================================================~%MSG: auto_smart_factory/Tray~%# The representation of a warehouse tray~%~%# the unique identifier of this tray~%uint32 id~%~%# the type of the tray. Valid values: 'input', 'output' and 'storage'~%string type~%~%# the coordinates of the center of the tray in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%# maximum load, i.e. the maximum weight of packages to be put into this tray~%float32 max_load~%~%# package type this tray can carry. 0 means no constraints.~%uint32 package_type~%~%================================================================================~%MSG: auto_smart_factory/Wall~%# The representation of a warehouse wall~%~%# the coordinates of the center of the wall in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%~%~%================================================================================~%MSG: auto_smart_factory/TrayGeometry~%# Info about the tray geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: auto_smart_factory/WallGeometry~%# Info about the wall geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: auto_smart_factory/PackagePool~%# Drop location: The 3D point where packages can be dropped to be placed in the container.~%geometry_msgs/Point32 drop_location~%~%# Stacking area: Area where packages can be stacked at the beginning~%geometry_msgs/Point32[2] stacking_area~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: auto_smart_factory/Robot~%# id of this robot~%string id~%~%# type name of this robot~%string type~%~%~%================================================================================~%MSG: auto_smart_factory/IdlePosition~%# unique robot id/name~%string id~%~%# idle pose, yaw angle in degree~%geometry_msgs/Pose2D pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'initRoadmapPlanner-request)))
  "Returns full string definition for message of type 'initRoadmapPlanner-request"
  (cl:format cl:nil "WarehouseConfiguration warehouse_configuration~%RobotConfiguration[] robot_configurations~%~%================================================================================~%MSG: auto_smart_factory/WarehouseConfiguration~%# dimensions of the map in meters~%float32 width~%float32 height~%~%# Info about the trays~%Tray[] trays~%~%# Info about the walls~%Wall[] walls~%~%# Info about the tray geometry~%TrayGeometry tray_geometry~%~%# Info about the wall geometry~%WallGeometry wall_geometry~%~%# The occupancy map of the warehouse~%nav_msgs/OccupancyGrid occupancy_map~%~%# The package pool~%PackagePool package_pool~%~%# Robots in this warehouse~%Robot[] robots~%~%# Idle positions of the robots~%IdlePosition[] idle_positions~%~%~%================================================================================~%MSG: auto_smart_factory/Tray~%# The representation of a warehouse tray~%~%# the unique identifier of this tray~%uint32 id~%~%# the type of the tray. Valid values: 'input', 'output' and 'storage'~%string type~%~%# the coordinates of the center of the tray in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%# maximum load, i.e. the maximum weight of packages to be put into this tray~%float32 max_load~%~%# package type this tray can carry. 0 means no constraints.~%uint32 package_type~%~%================================================================================~%MSG: auto_smart_factory/Wall~%# The representation of a warehouse wall~%~%# the coordinates of the center of the wall in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%~%~%================================================================================~%MSG: auto_smart_factory/TrayGeometry~%# Info about the tray geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: auto_smart_factory/WallGeometry~%# Info about the wall geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: auto_smart_factory/PackagePool~%# Drop location: The 3D point where packages can be dropped to be placed in the container.~%geometry_msgs/Point32 drop_location~%~%# Stacking area: Area where packages can be stacked at the beginning~%geometry_msgs/Point32[2] stacking_area~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: auto_smart_factory/Robot~%# id of this robot~%string id~%~%# type name of this robot~%string type~%~%~%================================================================================~%MSG: auto_smart_factory/IdlePosition~%# unique robot id/name~%string id~%~%# idle pose, yaw angle in degree~%geometry_msgs/Pose2D pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <initRoadmapPlanner-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'warehouse_configuration))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_configurations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <initRoadmapPlanner-request>))
  "Converts a ROS message object to a list"
  (cl:list 'initRoadmapPlanner-request
    (cl:cons ':warehouse_configuration (warehouse_configuration msg))
    (cl:cons ':robot_configurations (robot_configurations msg))
))
;//! \htmlinclude initRoadmapPlanner-response.msg.html

(cl:defclass <initRoadmapPlanner-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass initRoadmapPlanner-response (<initRoadmapPlanner-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <initRoadmapPlanner-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'initRoadmapPlanner-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<initRoadmapPlanner-response> is deprecated: use auto_smart_factory-srv:initRoadmapPlanner-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <initRoadmapPlanner-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <initRoadmapPlanner-response>) ostream)
  "Serializes a message object of type '<initRoadmapPlanner-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <initRoadmapPlanner-response>) istream)
  "Deserializes a message object of type '<initRoadmapPlanner-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<initRoadmapPlanner-response>)))
  "Returns string type for a service object of type '<initRoadmapPlanner-response>"
  "auto_smart_factory/initRoadmapPlannerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'initRoadmapPlanner-response)))
  "Returns string type for a service object of type 'initRoadmapPlanner-response"
  "auto_smart_factory/initRoadmapPlannerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<initRoadmapPlanner-response>)))
  "Returns md5sum for a message object of type '<initRoadmapPlanner-response>"
  "fb9bffdfe2f4f2d0cadce15bb8c12ec2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'initRoadmapPlanner-response)))
  "Returns md5sum for a message object of type 'initRoadmapPlanner-response"
  "fb9bffdfe2f4f2d0cadce15bb8c12ec2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<initRoadmapPlanner-response>)))
  "Returns full string definition for message of type '<initRoadmapPlanner-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'initRoadmapPlanner-response)))
  "Returns full string definition for message of type 'initRoadmapPlanner-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <initRoadmapPlanner-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <initRoadmapPlanner-response>))
  "Converts a ROS message object to a list"
  (cl:list 'initRoadmapPlanner-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'initRoadmapPlanner)))
  'initRoadmapPlanner-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'initRoadmapPlanner)))
  'initRoadmapPlanner-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'initRoadmapPlanner)))
  "Returns string type for a service object of type '<initRoadmapPlanner>"
  "auto_smart_factory/initRoadmapPlanner")