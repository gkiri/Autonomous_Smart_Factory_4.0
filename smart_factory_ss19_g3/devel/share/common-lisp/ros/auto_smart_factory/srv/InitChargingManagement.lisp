; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude InitChargingManagement-request.msg.html

(cl:defclass <InitChargingManagement-request> (roslisp-msg-protocol:ros-message)
  ((warehouse_configuration
    :reader warehouse_configuration
    :initarg :warehouse_configuration
    :type auto_smart_factory-msg:WarehouseConfiguration
    :initform (cl:make-instance 'auto_smart_factory-msg:WarehouseConfiguration)))
)

(cl:defclass InitChargingManagement-request (<InitChargingManagement-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitChargingManagement-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitChargingManagement-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<InitChargingManagement-request> is deprecated: use auto_smart_factory-srv:InitChargingManagement-request instead.")))

(cl:ensure-generic-function 'warehouse_configuration-val :lambda-list '(m))
(cl:defmethod warehouse_configuration-val ((m <InitChargingManagement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:warehouse_configuration-val is deprecated.  Use auto_smart_factory-srv:warehouse_configuration instead.")
  (warehouse_configuration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitChargingManagement-request>) ostream)
  "Serializes a message object of type '<InitChargingManagement-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'warehouse_configuration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitChargingManagement-request>) istream)
  "Deserializes a message object of type '<InitChargingManagement-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'warehouse_configuration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitChargingManagement-request>)))
  "Returns string type for a service object of type '<InitChargingManagement-request>"
  "auto_smart_factory/InitChargingManagementRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitChargingManagement-request)))
  "Returns string type for a service object of type 'InitChargingManagement-request"
  "auto_smart_factory/InitChargingManagementRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitChargingManagement-request>)))
  "Returns md5sum for a message object of type '<InitChargingManagement-request>"
  "c4721ba246bdc7ee7d3c229936a53960")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitChargingManagement-request)))
  "Returns md5sum for a message object of type 'InitChargingManagement-request"
  "c4721ba246bdc7ee7d3c229936a53960")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitChargingManagement-request>)))
  "Returns full string definition for message of type '<InitChargingManagement-request>"
  (cl:format cl:nil "WarehouseConfiguration warehouse_configuration~%~%================================================================================~%MSG: auto_smart_factory/WarehouseConfiguration~%# dimensions of the map in meters~%float32 width~%float32 height~%~%# Info about the trays~%Tray[] trays~%~%# Info about the walls~%Wall[] walls~%~%# Info about the tray geometry~%TrayGeometry tray_geometry~%~%# Info about the wall geometry~%WallGeometry wall_geometry~%~%# The occupancy map of the warehouse~%nav_msgs/OccupancyGrid occupancy_map~%~%# The package pool~%PackagePool package_pool~%~%# Robots in this warehouse~%Robot[] robots~%~%# Idle positions of the robots~%IdlePosition[] idle_positions~%~%~%================================================================================~%MSG: auto_smart_factory/Tray~%# The representation of a warehouse tray~%~%# the unique identifier of this tray~%uint32 id~%~%# the type of the tray. Valid values: 'input', 'output' and 'storage'~%string type~%~%# the coordinates of the center of the tray in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%# maximum load, i.e. the maximum weight of packages to be put into this tray~%float32 max_load~%~%# package type this tray can carry. 0 means no constraints.~%uint32 package_type~%~%================================================================================~%MSG: auto_smart_factory/Wall~%# The representation of a warehouse wall~%~%# the coordinates of the center of the wall in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%~%~%================================================================================~%MSG: auto_smart_factory/TrayGeometry~%# Info about the tray geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: auto_smart_factory/WallGeometry~%# Info about the wall geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: auto_smart_factory/PackagePool~%# Drop location: The 3D point where packages can be dropped to be placed in the container.~%geometry_msgs/Point32 drop_location~%~%# Stacking area: Area where packages can be stacked at the beginning~%geometry_msgs/Point32[2] stacking_area~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: auto_smart_factory/Robot~%# id of this robot~%string id~%~%# type name of this robot~%string type~%~%~%================================================================================~%MSG: auto_smart_factory/IdlePosition~%# unique robot id/name~%string id~%~%# idle pose, yaw angle in degree~%geometry_msgs/Pose2D pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitChargingManagement-request)))
  "Returns full string definition for message of type 'InitChargingManagement-request"
  (cl:format cl:nil "WarehouseConfiguration warehouse_configuration~%~%================================================================================~%MSG: auto_smart_factory/WarehouseConfiguration~%# dimensions of the map in meters~%float32 width~%float32 height~%~%# Info about the trays~%Tray[] trays~%~%# Info about the walls~%Wall[] walls~%~%# Info about the tray geometry~%TrayGeometry tray_geometry~%~%# Info about the wall geometry~%WallGeometry wall_geometry~%~%# The occupancy map of the warehouse~%nav_msgs/OccupancyGrid occupancy_map~%~%# The package pool~%PackagePool package_pool~%~%# Robots in this warehouse~%Robot[] robots~%~%# Idle positions of the robots~%IdlePosition[] idle_positions~%~%~%================================================================================~%MSG: auto_smart_factory/Tray~%# The representation of a warehouse tray~%~%# the unique identifier of this tray~%uint32 id~%~%# the type of the tray. Valid values: 'input', 'output' and 'storage'~%string type~%~%# the coordinates of the center of the tray in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%# maximum load, i.e. the maximum weight of packages to be put into this tray~%float32 max_load~%~%# package type this tray can carry. 0 means no constraints.~%uint32 package_type~%~%================================================================================~%MSG: auto_smart_factory/Wall~%# The representation of a warehouse wall~%~%# the coordinates of the center of the wall in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%~%~%================================================================================~%MSG: auto_smart_factory/TrayGeometry~%# Info about the tray geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: auto_smart_factory/WallGeometry~%# Info about the wall geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: auto_smart_factory/PackagePool~%# Drop location: The 3D point where packages can be dropped to be placed in the container.~%geometry_msgs/Point32 drop_location~%~%# Stacking area: Area where packages can be stacked at the beginning~%geometry_msgs/Point32[2] stacking_area~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: auto_smart_factory/Robot~%# id of this robot~%string id~%~%# type name of this robot~%string type~%~%~%================================================================================~%MSG: auto_smart_factory/IdlePosition~%# unique robot id/name~%string id~%~%# idle pose, yaw angle in degree~%geometry_msgs/Pose2D pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitChargingManagement-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'warehouse_configuration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitChargingManagement-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InitChargingManagement-request
    (cl:cons ':warehouse_configuration (warehouse_configuration msg))
))
;//! \htmlinclude InitChargingManagement-response.msg.html

(cl:defclass <InitChargingManagement-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass InitChargingManagement-response (<InitChargingManagement-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitChargingManagement-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitChargingManagement-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<InitChargingManagement-response> is deprecated: use auto_smart_factory-srv:InitChargingManagement-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <InitChargingManagement-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitChargingManagement-response>) ostream)
  "Serializes a message object of type '<InitChargingManagement-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitChargingManagement-response>) istream)
  "Deserializes a message object of type '<InitChargingManagement-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitChargingManagement-response>)))
  "Returns string type for a service object of type '<InitChargingManagement-response>"
  "auto_smart_factory/InitChargingManagementResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitChargingManagement-response)))
  "Returns string type for a service object of type 'InitChargingManagement-response"
  "auto_smart_factory/InitChargingManagementResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitChargingManagement-response>)))
  "Returns md5sum for a message object of type '<InitChargingManagement-response>"
  "c4721ba246bdc7ee7d3c229936a53960")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitChargingManagement-response)))
  "Returns md5sum for a message object of type 'InitChargingManagement-response"
  "c4721ba246bdc7ee7d3c229936a53960")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitChargingManagement-response>)))
  "Returns full string definition for message of type '<InitChargingManagement-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitChargingManagement-response)))
  "Returns full string definition for message of type 'InitChargingManagement-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitChargingManagement-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitChargingManagement-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InitChargingManagement-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InitChargingManagement)))
  'InitChargingManagement-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InitChargingManagement)))
  'InitChargingManagement-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitChargingManagement)))
  "Returns string type for a service object of type '<InitChargingManagement>"
  "auto_smart_factory/InitChargingManagement")