; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude WarehouseConfiguration.msg.html

(cl:defclass <WarehouseConfiguration> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (trays
    :reader trays
    :initarg :trays
    :type (cl:vector auto_smart_factory-msg:Tray)
   :initform (cl:make-array 0 :element-type 'auto_smart_factory-msg:Tray :initial-element (cl:make-instance 'auto_smart_factory-msg:Tray)))
   (walls
    :reader walls
    :initarg :walls
    :type (cl:vector auto_smart_factory-msg:Wall)
   :initform (cl:make-array 0 :element-type 'auto_smart_factory-msg:Wall :initial-element (cl:make-instance 'auto_smart_factory-msg:Wall)))
   (tray_geometry
    :reader tray_geometry
    :initarg :tray_geometry
    :type auto_smart_factory-msg:TrayGeometry
    :initform (cl:make-instance 'auto_smart_factory-msg:TrayGeometry))
   (wall_geometry
    :reader wall_geometry
    :initarg :wall_geometry
    :type auto_smart_factory-msg:WallGeometry
    :initform (cl:make-instance 'auto_smart_factory-msg:WallGeometry))
   (occupancy_map
    :reader occupancy_map
    :initarg :occupancy_map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid))
   (package_pool
    :reader package_pool
    :initarg :package_pool
    :type auto_smart_factory-msg:PackagePool
    :initform (cl:make-instance 'auto_smart_factory-msg:PackagePool))
   (robots
    :reader robots
    :initarg :robots
    :type (cl:vector auto_smart_factory-msg:Robot)
   :initform (cl:make-array 0 :element-type 'auto_smart_factory-msg:Robot :initial-element (cl:make-instance 'auto_smart_factory-msg:Robot)))
   (idle_positions
    :reader idle_positions
    :initarg :idle_positions
    :type (cl:vector auto_smart_factory-msg:IdlePosition)
   :initform (cl:make-array 0 :element-type 'auto_smart_factory-msg:IdlePosition :initial-element (cl:make-instance 'auto_smart_factory-msg:IdlePosition))))
)

(cl:defclass WarehouseConfiguration (<WarehouseConfiguration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WarehouseConfiguration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WarehouseConfiguration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<WarehouseConfiguration> is deprecated: use auto_smart_factory-msg:WarehouseConfiguration instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <WarehouseConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:width-val is deprecated.  Use auto_smart_factory-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <WarehouseConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:height-val is deprecated.  Use auto_smart_factory-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'trays-val :lambda-list '(m))
(cl:defmethod trays-val ((m <WarehouseConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:trays-val is deprecated.  Use auto_smart_factory-msg:trays instead.")
  (trays m))

(cl:ensure-generic-function 'walls-val :lambda-list '(m))
(cl:defmethod walls-val ((m <WarehouseConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:walls-val is deprecated.  Use auto_smart_factory-msg:walls instead.")
  (walls m))

(cl:ensure-generic-function 'tray_geometry-val :lambda-list '(m))
(cl:defmethod tray_geometry-val ((m <WarehouseConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:tray_geometry-val is deprecated.  Use auto_smart_factory-msg:tray_geometry instead.")
  (tray_geometry m))

(cl:ensure-generic-function 'wall_geometry-val :lambda-list '(m))
(cl:defmethod wall_geometry-val ((m <WarehouseConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:wall_geometry-val is deprecated.  Use auto_smart_factory-msg:wall_geometry instead.")
  (wall_geometry m))

(cl:ensure-generic-function 'occupancy_map-val :lambda-list '(m))
(cl:defmethod occupancy_map-val ((m <WarehouseConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:occupancy_map-val is deprecated.  Use auto_smart_factory-msg:occupancy_map instead.")
  (occupancy_map m))

(cl:ensure-generic-function 'package_pool-val :lambda-list '(m))
(cl:defmethod package_pool-val ((m <WarehouseConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:package_pool-val is deprecated.  Use auto_smart_factory-msg:package_pool instead.")
  (package_pool m))

(cl:ensure-generic-function 'robots-val :lambda-list '(m))
(cl:defmethod robots-val ((m <WarehouseConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:robots-val is deprecated.  Use auto_smart_factory-msg:robots instead.")
  (robots m))

(cl:ensure-generic-function 'idle_positions-val :lambda-list '(m))
(cl:defmethod idle_positions-val ((m <WarehouseConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:idle_positions-val is deprecated.  Use auto_smart_factory-msg:idle_positions instead.")
  (idle_positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WarehouseConfiguration>) ostream)
  "Serializes a message object of type '<WarehouseConfiguration>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trays))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trays))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'walls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'walls))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tray_geometry) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wall_geometry) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'occupancy_map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'package_pool) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robots))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'idle_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'idle_positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WarehouseConfiguration>) istream)
  "Deserializes a message object of type '<WarehouseConfiguration>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trays) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trays)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auto_smart_factory-msg:Tray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'walls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'walls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auto_smart_factory-msg:Wall))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tray_geometry) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wall_geometry) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'occupancy_map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'package_pool) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auto_smart_factory-msg:Robot))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'idle_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'idle_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auto_smart_factory-msg:IdlePosition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WarehouseConfiguration>)))
  "Returns string type for a message object of type '<WarehouseConfiguration>"
  "auto_smart_factory/WarehouseConfiguration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WarehouseConfiguration)))
  "Returns string type for a message object of type 'WarehouseConfiguration"
  "auto_smart_factory/WarehouseConfiguration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WarehouseConfiguration>)))
  "Returns md5sum for a message object of type '<WarehouseConfiguration>"
  "d6b22f5b35a51b0f4e33943dec0ac3f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WarehouseConfiguration)))
  "Returns md5sum for a message object of type 'WarehouseConfiguration"
  "d6b22f5b35a51b0f4e33943dec0ac3f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WarehouseConfiguration>)))
  "Returns full string definition for message of type '<WarehouseConfiguration>"
  (cl:format cl:nil "# dimensions of the map in meters~%float32 width~%float32 height~%~%# Info about the trays~%Tray[] trays~%~%# Info about the walls~%Wall[] walls~%~%# Info about the tray geometry~%TrayGeometry tray_geometry~%~%# Info about the wall geometry~%WallGeometry wall_geometry~%~%# The occupancy map of the warehouse~%nav_msgs/OccupancyGrid occupancy_map~%~%# The package pool~%PackagePool package_pool~%~%# Robots in this warehouse~%Robot[] robots~%~%# Idle positions of the robots~%IdlePosition[] idle_positions~%~%~%================================================================================~%MSG: auto_smart_factory/Tray~%# The representation of a warehouse tray~%~%# the unique identifier of this tray~%uint32 id~%~%# the type of the tray. Valid values: 'input', 'output' and 'storage'~%string type~%~%# the coordinates of the center of the tray in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%# maximum load, i.e. the maximum weight of packages to be put into this tray~%float32 max_load~%~%# package type this tray can carry. 0 means no constraints.~%uint32 package_type~%~%================================================================================~%MSG: auto_smart_factory/Wall~%# The representation of a warehouse wall~%~%# the coordinates of the center of the wall in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%~%~%================================================================================~%MSG: auto_smart_factory/TrayGeometry~%# Info about the tray geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: auto_smart_factory/WallGeometry~%# Info about the wall geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: auto_smart_factory/PackagePool~%# Drop location: The 3D point where packages can be dropped to be placed in the container.~%geometry_msgs/Point32 drop_location~%~%# Stacking area: Area where packages can be stacked at the beginning~%geometry_msgs/Point32[2] stacking_area~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: auto_smart_factory/Robot~%# id of this robot~%string id~%~%# type name of this robot~%string type~%~%~%================================================================================~%MSG: auto_smart_factory/IdlePosition~%# unique robot id/name~%string id~%~%# idle pose, yaw angle in degree~%geometry_msgs/Pose2D pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WarehouseConfiguration)))
  "Returns full string definition for message of type 'WarehouseConfiguration"
  (cl:format cl:nil "# dimensions of the map in meters~%float32 width~%float32 height~%~%# Info about the trays~%Tray[] trays~%~%# Info about the walls~%Wall[] walls~%~%# Info about the tray geometry~%TrayGeometry tray_geometry~%~%# Info about the wall geometry~%WallGeometry wall_geometry~%~%# The occupancy map of the warehouse~%nav_msgs/OccupancyGrid occupancy_map~%~%# The package pool~%PackagePool package_pool~%~%# Robots in this warehouse~%Robot[] robots~%~%# Idle positions of the robots~%IdlePosition[] idle_positions~%~%~%================================================================================~%MSG: auto_smart_factory/Tray~%# The representation of a warehouse tray~%~%# the unique identifier of this tray~%uint32 id~%~%# the type of the tray. Valid values: 'input', 'output' and 'storage'~%string type~%~%# the coordinates of the center of the tray in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%# maximum load, i.e. the maximum weight of packages to be put into this tray~%float32 max_load~%~%# package type this tray can carry. 0 means no constraints.~%uint32 package_type~%~%================================================================================~%MSG: auto_smart_factory/Wall~%# The representation of a warehouse wall~%~%# the coordinates of the center of the wall in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%~%~%================================================================================~%MSG: auto_smart_factory/TrayGeometry~%# Info about the tray geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: auto_smart_factory/WallGeometry~%# Info about the wall geometry~%float32 width~%float32 height~%~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: auto_smart_factory/PackagePool~%# Drop location: The 3D point where packages can be dropped to be placed in the container.~%geometry_msgs/Point32 drop_location~%~%# Stacking area: Area where packages can be stacked at the beginning~%geometry_msgs/Point32[2] stacking_area~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: auto_smart_factory/Robot~%# id of this robot~%string id~%~%# type name of this robot~%string type~%~%~%================================================================================~%MSG: auto_smart_factory/IdlePosition~%# unique robot id/name~%string id~%~%# idle pose, yaw angle in degree~%geometry_msgs/Pose2D pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WarehouseConfiguration>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trays) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'walls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tray_geometry))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wall_geometry))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'occupancy_map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'package_pool))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'idle_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WarehouseConfiguration>))
  "Converts a ROS message object to a list"
  (cl:list 'WarehouseConfiguration
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':trays (trays msg))
    (cl:cons ':walls (walls msg))
    (cl:cons ':tray_geometry (tray_geometry msg))
    (cl:cons ':wall_geometry (wall_geometry msg))
    (cl:cons ':occupancy_map (occupancy_map msg))
    (cl:cons ':package_pool (package_pool msg))
    (cl:cons ':robots (robots msg))
    (cl:cons ':idle_positions (idle_positions msg))
))
