; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude GetWarehouseConfig-request.msg.html

(cl:defclass <GetWarehouseConfig-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetWarehouseConfig-request (<GetWarehouseConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWarehouseConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWarehouseConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetWarehouseConfig-request> is deprecated: use auto_smart_factory-srv:GetWarehouseConfig-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWarehouseConfig-request>) ostream)
  "Serializes a message object of type '<GetWarehouseConfig-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWarehouseConfig-request>) istream)
  "Deserializes a message object of type '<GetWarehouseConfig-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWarehouseConfig-request>)))
  "Returns string type for a service object of type '<GetWarehouseConfig-request>"
  "auto_smart_factory/GetWarehouseConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWarehouseConfig-request)))
  "Returns string type for a service object of type 'GetWarehouseConfig-request"
  "auto_smart_factory/GetWarehouseConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWarehouseConfig-request>)))
  "Returns md5sum for a message object of type '<GetWarehouseConfig-request>"
  "bf9e28ae61752bbb3424c5bfc632987f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWarehouseConfig-request)))
  "Returns md5sum for a message object of type 'GetWarehouseConfig-request"
  "bf9e28ae61752bbb3424c5bfc632987f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWarehouseConfig-request>)))
  "Returns full string definition for message of type '<GetWarehouseConfig-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWarehouseConfig-request)))
  "Returns full string definition for message of type 'GetWarehouseConfig-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWarehouseConfig-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWarehouseConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWarehouseConfig-request
))
;//! \htmlinclude GetWarehouseConfig-response.msg.html

(cl:defclass <GetWarehouseConfig-response> (roslisp-msg-protocol:ros-message)
  ((warehouse_configuration
    :reader warehouse_configuration
    :initarg :warehouse_configuration
    :type auto_smart_factory-msg:WarehouseConfiguration
    :initform (cl:make-instance 'auto_smart_factory-msg:WarehouseConfiguration)))
)

(cl:defclass GetWarehouseConfig-response (<GetWarehouseConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWarehouseConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWarehouseConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetWarehouseConfig-response> is deprecated: use auto_smart_factory-srv:GetWarehouseConfig-response instead.")))

(cl:ensure-generic-function 'warehouse_configuration-val :lambda-list '(m))
(cl:defmethod warehouse_configuration-val ((m <GetWarehouseConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:warehouse_configuration-val is deprecated.  Use auto_smart_factory-srv:warehouse_configuration instead.")
  (warehouse_configuration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWarehouseConfig-response>) ostream)
  "Serializes a message object of type '<GetWarehouseConfig-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'warehouse_configuration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWarehouseConfig-response>) istream)
  "Deserializes a message object of type '<GetWarehouseConfig-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'warehouse_configuration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWarehouseConfig-response>)))
  "Returns string type for a service object of type '<GetWarehouseConfig-response>"
  "auto_smart_factory/GetWarehouseConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWarehouseConfig-response)))
  "Returns string type for a service object of type 'GetWarehouseConfig-response"
  "auto_smart_factory/GetWarehouseConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWarehouseConfig-response>)))
  "Returns md5sum for a message object of type '<GetWarehouseConfig-response>"
  "bf9e28ae61752bbb3424c5bfc632987f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWarehouseConfig-response)))
  "Returns md5sum for a message object of type 'GetWarehouseConfig-response"
  "bf9e28ae61752bbb3424c5bfc632987f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWarehouseConfig-response>)))
  "Returns full string definition for message of type '<GetWarehouseConfig-response>"
  (cl:format cl:nil "WarehouseConfiguration warehouse_configuration~%~%~%================================================================================~%MSG: auto_smart_factory/WarehouseConfiguration~%# dimensions of the map in meters~%float32 width~%float32 height~%~%# Info about the trays~%Tray[] trays~%~%# Info about the walls~%Wall[] walls~%~%# Info about the tray geometry~%TrayGeometry tray_geometry~%~%# Info about the wall geometry~%WallGeometry wall_geometry~%~%# The occupancy map of the warehouse~%nav_msgs/OccupancyGrid occupancy_map~%~%# The package pool~%PackagePool package_pool~%~%# Robots in this warehouse~%Robot[] robots~%~%# Idle positions of the robots~%IdlePosition[] idle_positions~%~%~%================================================================================~%MSG: auto_smart_factory/Tray~%# The representation of a warehouse tray~%~%# the unique identifier of this tray~%uint32 id~%~%# the type of the tray. Valid values: 'input', 'output' and 'storage'~%string type~%~%# the coordinates of the center of the tray in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%# maximum load, i.e. the maximum weight of packages to be put into this tray~%float32 max_load~%~%# package type this tray can carry. 0 means no constraints.~%uint32 package_type~%~%================================================================================~%MSG: auto_smart_factory/Wall~%# The representation of a warehouse wall~%~%# the coordinates of the center of the wall in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%~%~%================================================================================~%MSG: auto_smart_factory/TrayGeometry~%# Info about the tray geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: auto_smart_factory/WallGeometry~%# Info about the wall geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: auto_smart_factory/PackagePool~%# Drop location: The 3D point where packages can be dropped to be placed in the container.~%geometry_msgs/Point32 drop_location~%~%# Stacking area: Area where packages can be stacked at the beginning~%geometry_msgs/Point32[2] stacking_area~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: auto_smart_factory/Robot~%# id of this robot~%string id~%~%# type name of this robot~%string type~%~%~%================================================================================~%MSG: auto_smart_factory/IdlePosition~%# unique robot id/name~%string id~%~%# idle pose, yaw angle in degree~%geometry_msgs/Pose2D pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWarehouseConfig-response)))
  "Returns full string definition for message of type 'GetWarehouseConfig-response"
  (cl:format cl:nil "WarehouseConfiguration warehouse_configuration~%~%~%================================================================================~%MSG: auto_smart_factory/WarehouseConfiguration~%# dimensions of the map in meters~%float32 width~%float32 height~%~%# Info about the trays~%Tray[] trays~%~%# Info about the walls~%Wall[] walls~%~%# Info about the tray geometry~%TrayGeometry tray_geometry~%~%# Info about the wall geometry~%WallGeometry wall_geometry~%~%# The occupancy map of the warehouse~%nav_msgs/OccupancyGrid occupancy_map~%~%# The package pool~%PackagePool package_pool~%~%# Robots in this warehouse~%Robot[] robots~%~%# Idle positions of the robots~%IdlePosition[] idle_positions~%~%~%================================================================================~%MSG: auto_smart_factory/Tray~%# The representation of a warehouse tray~%~%# the unique identifier of this tray~%uint32 id~%~%# the type of the tray. Valid values: 'input', 'output' and 'storage'~%string type~%~%# the coordinates of the center of the tray in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%# maximum load, i.e. the maximum weight of packages to be put into this tray~%float32 max_load~%~%# package type this tray can carry. 0 means no constraints.~%uint32 package_type~%~%================================================================================~%MSG: auto_smart_factory/Wall~%# The representation of a warehouse wall~%~%# the coordinates of the center of the wall in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%~%~%================================================================================~%MSG: auto_smart_factory/TrayGeometry~%# Info about the tray geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: auto_smart_factory/WallGeometry~%# Info about the wall geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: auto_smart_factory/PackagePool~%# Drop location: The 3D point where packages can be dropped to be placed in the container.~%geometry_msgs/Point32 drop_location~%~%# Stacking area: Area where packages can be stacked at the beginning~%geometry_msgs/Point32[2] stacking_area~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: auto_smart_factory/Robot~%# id of this robot~%string id~%~%# type name of this robot~%string type~%~%~%================================================================================~%MSG: auto_smart_factory/IdlePosition~%# unique robot id/name~%string id~%~%# idle pose, yaw angle in degree~%geometry_msgs/Pose2D pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWarehouseConfig-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'warehouse_configuration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWarehouseConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWarehouseConfig-response
    (cl:cons ':warehouse_configuration (warehouse_configuration msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWarehouseConfig)))
  'GetWarehouseConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWarehouseConfig)))
  'GetWarehouseConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWarehouseConfig)))
  "Returns string type for a service object of type '<GetWarehouseConfig>"
  "auto_smart_factory/GetWarehouseConfig")