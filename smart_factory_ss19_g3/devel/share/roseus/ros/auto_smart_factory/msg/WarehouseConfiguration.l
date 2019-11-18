;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::WarehouseConfiguration)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'WarehouseConfiguration (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::WAREHOUSECONFIGURATION")
  (make-package "AUTO_SMART_FACTORY::WAREHOUSECONFIGURATION"))

(in-package "ROS")
;;//! \htmlinclude WarehouseConfiguration.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass auto_smart_factory::WarehouseConfiguration
  :super ros::object
  :slots (_width _height _trays _walls _tray_geometry _wall_geometry _occupancy_map _package_pool _robots _idle_positions ))

(defmethod auto_smart_factory::WarehouseConfiguration
  (:init
   (&key
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:trays __trays) (let (r) (dotimes (i 0) (push (instance auto_smart_factory::Tray :init) r)) r))
    ((:walls __walls) (let (r) (dotimes (i 0) (push (instance auto_smart_factory::Wall :init) r)) r))
    ((:tray_geometry __tray_geometry) (instance auto_smart_factory::TrayGeometry :init))
    ((:wall_geometry __wall_geometry) (instance auto_smart_factory::WallGeometry :init))
    ((:occupancy_map __occupancy_map) (instance nav_msgs::OccupancyGrid :init))
    ((:package_pool __package_pool) (instance auto_smart_factory::PackagePool :init))
    ((:robots __robots) (let (r) (dotimes (i 0) (push (instance auto_smart_factory::Robot :init) r)) r))
    ((:idle_positions __idle_positions) (let (r) (dotimes (i 0) (push (instance auto_smart_factory::IdlePosition :init) r)) r))
    )
   (send-super :init)
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _trays __trays)
   (setq _walls __walls)
   (setq _tray_geometry __tray_geometry)
   (setq _wall_geometry __wall_geometry)
   (setq _occupancy_map __occupancy_map)
   (setq _package_pool __package_pool)
   (setq _robots __robots)
   (setq _idle_positions __idle_positions)
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:trays
   (&rest __trays)
   (if (keywordp (car __trays))
       (send* _trays __trays)
     (progn
       (if __trays (setq _trays (car __trays)))
       _trays)))
  (:walls
   (&rest __walls)
   (if (keywordp (car __walls))
       (send* _walls __walls)
     (progn
       (if __walls (setq _walls (car __walls)))
       _walls)))
  (:tray_geometry
   (&rest __tray_geometry)
   (if (keywordp (car __tray_geometry))
       (send* _tray_geometry __tray_geometry)
     (progn
       (if __tray_geometry (setq _tray_geometry (car __tray_geometry)))
       _tray_geometry)))
  (:wall_geometry
   (&rest __wall_geometry)
   (if (keywordp (car __wall_geometry))
       (send* _wall_geometry __wall_geometry)
     (progn
       (if __wall_geometry (setq _wall_geometry (car __wall_geometry)))
       _wall_geometry)))
  (:occupancy_map
   (&rest __occupancy_map)
   (if (keywordp (car __occupancy_map))
       (send* _occupancy_map __occupancy_map)
     (progn
       (if __occupancy_map (setq _occupancy_map (car __occupancy_map)))
       _occupancy_map)))
  (:package_pool
   (&rest __package_pool)
   (if (keywordp (car __package_pool))
       (send* _package_pool __package_pool)
     (progn
       (if __package_pool (setq _package_pool (car __package_pool)))
       _package_pool)))
  (:robots
   (&rest __robots)
   (if (keywordp (car __robots))
       (send* _robots __robots)
     (progn
       (if __robots (setq _robots (car __robots)))
       _robots)))
  (:idle_positions
   (&rest __idle_positions)
   (if (keywordp (car __idle_positions))
       (send* _idle_positions __idle_positions)
     (progn
       (if __idle_positions (setq _idle_positions (car __idle_positions)))
       _idle_positions)))
  (:serialization-length
   ()
   (+
    ;; float32 _width
    4
    ;; float32 _height
    4
    ;; auto_smart_factory/Tray[] _trays
    (apply #'+ (send-all _trays :serialization-length)) 4
    ;; auto_smart_factory/Wall[] _walls
    (apply #'+ (send-all _walls :serialization-length)) 4
    ;; auto_smart_factory/TrayGeometry _tray_geometry
    (send _tray_geometry :serialization-length)
    ;; auto_smart_factory/WallGeometry _wall_geometry
    (send _wall_geometry :serialization-length)
    ;; nav_msgs/OccupancyGrid _occupancy_map
    (send _occupancy_map :serialization-length)
    ;; auto_smart_factory/PackagePool _package_pool
    (send _package_pool :serialization-length)
    ;; auto_smart_factory/Robot[] _robots
    (apply #'+ (send-all _robots :serialization-length)) 4
    ;; auto_smart_factory/IdlePosition[] _idle_positions
    (apply #'+ (send-all _idle_positions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; auto_smart_factory/Tray[] _trays
     (write-long (length _trays) s)
     (dolist (elem _trays)
       (send elem :serialize s)
       )
     ;; auto_smart_factory/Wall[] _walls
     (write-long (length _walls) s)
     (dolist (elem _walls)
       (send elem :serialize s)
       )
     ;; auto_smart_factory/TrayGeometry _tray_geometry
       (send _tray_geometry :serialize s)
     ;; auto_smart_factory/WallGeometry _wall_geometry
       (send _wall_geometry :serialize s)
     ;; nav_msgs/OccupancyGrid _occupancy_map
       (send _occupancy_map :serialize s)
     ;; auto_smart_factory/PackagePool _package_pool
       (send _package_pool :serialize s)
     ;; auto_smart_factory/Robot[] _robots
     (write-long (length _robots) s)
     (dolist (elem _robots)
       (send elem :serialize s)
       )
     ;; auto_smart_factory/IdlePosition[] _idle_positions
     (write-long (length _idle_positions) s)
     (dolist (elem _idle_positions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; auto_smart_factory/Tray[] _trays
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trays (let (r) (dotimes (i n) (push (instance auto_smart_factory::Tray :init) r)) r))
     (dolist (elem- _trays)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; auto_smart_factory/Wall[] _walls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _walls (let (r) (dotimes (i n) (push (instance auto_smart_factory::Wall :init) r)) r))
     (dolist (elem- _walls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; auto_smart_factory/TrayGeometry _tray_geometry
     (send _tray_geometry :deserialize buf ptr-) (incf ptr- (send _tray_geometry :serialization-length))
   ;; auto_smart_factory/WallGeometry _wall_geometry
     (send _wall_geometry :deserialize buf ptr-) (incf ptr- (send _wall_geometry :serialization-length))
   ;; nav_msgs/OccupancyGrid _occupancy_map
     (send _occupancy_map :deserialize buf ptr-) (incf ptr- (send _occupancy_map :serialization-length))
   ;; auto_smart_factory/PackagePool _package_pool
     (send _package_pool :deserialize buf ptr-) (incf ptr- (send _package_pool :serialization-length))
   ;; auto_smart_factory/Robot[] _robots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robots (let (r) (dotimes (i n) (push (instance auto_smart_factory::Robot :init) r)) r))
     (dolist (elem- _robots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; auto_smart_factory/IdlePosition[] _idle_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _idle_positions (let (r) (dotimes (i n) (push (instance auto_smart_factory::IdlePosition :init) r)) r))
     (dolist (elem- _idle_positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get auto_smart_factory::WarehouseConfiguration :md5sum-) "d6b22f5b35a51b0f4e33943dec0ac3f0")
(setf (get auto_smart_factory::WarehouseConfiguration :datatype-) "auto_smart_factory/WarehouseConfiguration")
(setf (get auto_smart_factory::WarehouseConfiguration :definition-)
      "# dimensions of the map in meters
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

")



(provide :auto_smart_factory/WarehouseConfiguration "d6b22f5b35a51b0f4e33943dec0ac3f0")


