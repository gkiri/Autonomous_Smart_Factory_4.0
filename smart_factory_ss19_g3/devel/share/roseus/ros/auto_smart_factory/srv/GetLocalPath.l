;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::GetLocalPath)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'GetLocalPath (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::GETLOCALPATH")
  (make-package "AUTO_SMART_FACTORY::GETLOCALPATH"))
(unless (find-package "AUTO_SMART_FACTORY::GETLOCALPATHREQUEST")
  (make-package "AUTO_SMART_FACTORY::GETLOCALPATHREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::GETLOCALPATHRESPONSE")
  (make-package "AUTO_SMART_FACTORY::GETLOCALPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass auto_smart_factory::GetLocalPathRequest
  :super ros::object
  :slots (_agent_id _robots_path _robot_config _next_position _goal_position _robot_position _obstacles ))

(defmethod auto_smart_factory::GetLocalPathRequest
  (:init
   (&key
    ((:agent_id __agent_id) "")
    ((:robots_path __robots_path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:robot_config __robot_config) (instance auto_smart_factory::RobotConfiguration :init))
    ((:next_position __next_position) (instance geometry_msgs::Point :init))
    ((:goal_position __goal_position) (instance geometry_msgs::Point :init))
    ((:robot_position __robot_position) (instance geometry_msgs::Point :init))
    ((:obstacles __obstacles) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _agent_id (string __agent_id))
   (setq _robots_path __robots_path)
   (setq _robot_config __robot_config)
   (setq _next_position __next_position)
   (setq _goal_position __goal_position)
   (setq _robot_position __robot_position)
   (setq _obstacles __obstacles)
   self)
  (:agent_id
   (&optional __agent_id)
   (if __agent_id (setq _agent_id __agent_id)) _agent_id)
  (:robots_path
   (&rest __robots_path)
   (if (keywordp (car __robots_path))
       (send* _robots_path __robots_path)
     (progn
       (if __robots_path (setq _robots_path (car __robots_path)))
       _robots_path)))
  (:robot_config
   (&rest __robot_config)
   (if (keywordp (car __robot_config))
       (send* _robot_config __robot_config)
     (progn
       (if __robot_config (setq _robot_config (car __robot_config)))
       _robot_config)))
  (:next_position
   (&rest __next_position)
   (if (keywordp (car __next_position))
       (send* _next_position __next_position)
     (progn
       (if __next_position (setq _next_position (car __next_position)))
       _next_position)))
  (:goal_position
   (&rest __goal_position)
   (if (keywordp (car __goal_position))
       (send* _goal_position __goal_position)
     (progn
       (if __goal_position (setq _goal_position (car __goal_position)))
       _goal_position)))
  (:robot_position
   (&rest __robot_position)
   (if (keywordp (car __robot_position))
       (send* _robot_position __robot_position)
     (progn
       (if __robot_position (setq _robot_position (car __robot_position)))
       _robot_position)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; string _agent_id
    4 (length _agent_id)
    ;; geometry_msgs/Point[] _robots_path
    (apply #'+ (send-all _robots_path :serialization-length)) 4
    ;; auto_smart_factory/RobotConfiguration _robot_config
    (send _robot_config :serialization-length)
    ;; geometry_msgs/Point _next_position
    (send _next_position :serialization-length)
    ;; geometry_msgs/Point _goal_position
    (send _goal_position :serialization-length)
    ;; geometry_msgs/Point _robot_position
    (send _robot_position :serialization-length)
    ;; geometry_msgs/Point[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _agent_id
       (write-long (length _agent_id) s) (princ _agent_id s)
     ;; geometry_msgs/Point[] _robots_path
     (write-long (length _robots_path) s)
     (dolist (elem _robots_path)
       (send elem :serialize s)
       )
     ;; auto_smart_factory/RobotConfiguration _robot_config
       (send _robot_config :serialize s)
     ;; geometry_msgs/Point _next_position
       (send _next_position :serialize s)
     ;; geometry_msgs/Point _goal_position
       (send _goal_position :serialize s)
     ;; geometry_msgs/Point _robot_position
       (send _robot_position :serialize s)
     ;; geometry_msgs/Point[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _agent_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _agent_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point[] _robots_path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robots_path (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _robots_path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; auto_smart_factory/RobotConfiguration _robot_config
     (send _robot_config :deserialize buf ptr-) (incf ptr- (send _robot_config :serialization-length))
   ;; geometry_msgs/Point _next_position
     (send _next_position :deserialize buf ptr-) (incf ptr- (send _next_position :serialization-length))
   ;; geometry_msgs/Point _goal_position
     (send _goal_position :deserialize buf ptr-) (incf ptr- (send _goal_position :serialization-length))
   ;; geometry_msgs/Point _robot_position
     (send _robot_position :deserialize buf ptr-) (incf ptr- (send _robot_position :serialization-length))
   ;; geometry_msgs/Point[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass auto_smart_factory::GetLocalPathResponse
  :super ros::object
  :slots (_path _length ))

(defmethod auto_smart_factory::GetLocalPathResponse
  (:init
   (&key
    ((:path __path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _path __path)
   (setq _length (float __length))
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ;; float64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass auto_smart_factory::GetLocalPath
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::GetLocalPath :md5sum-) "24de2ce6824365cb99b622cce140382d")
(setf (get auto_smart_factory::GetLocalPath :datatype-) "auto_smart_factory/GetLocalPath")
(setf (get auto_smart_factory::GetLocalPath :request) auto_smart_factory::GetLocalPathRequest)
(setf (get auto_smart_factory::GetLocalPath :response) auto_smart_factory::GetLocalPathResponse)

(defmethod auto_smart_factory::GetLocalPathRequest
  (:response () (instance auto_smart_factory::GetLocalPathResponse :init)))

(setf (get auto_smart_factory::GetLocalPathRequest :md5sum-) "24de2ce6824365cb99b622cce140382d")
(setf (get auto_smart_factory::GetLocalPathRequest :datatype-) "auto_smart_factory/GetLocalPathRequest")
(setf (get auto_smart_factory::GetLocalPathRequest :definition-)
      "string agent_id
geometry_msgs/Point[] robots_path
RobotConfiguration robot_config
geometry_msgs/Point next_position
geometry_msgs/Point goal_position
geometry_msgs/Point robot_position


geometry_msgs/Point[] obstacles

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
---
geometry_msgs/Point[] path
float64 length


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get auto_smart_factory::GetLocalPathResponse :md5sum-) "24de2ce6824365cb99b622cce140382d")
(setf (get auto_smart_factory::GetLocalPathResponse :datatype-) "auto_smart_factory/GetLocalPathResponse")
(setf (get auto_smart_factory::GetLocalPathResponse :definition-)
      "string agent_id
geometry_msgs/Point[] robots_path
RobotConfiguration robot_config
geometry_msgs/Point next_position
geometry_msgs/Point goal_position
geometry_msgs/Point robot_position


geometry_msgs/Point[] obstacles

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
---
geometry_msgs/Point[] path
float64 length


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :auto_smart_factory/GetLocalPath "24de2ce6824365cb99b622cce140382d")


