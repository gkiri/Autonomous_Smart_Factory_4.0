;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::shortestPath)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'shortestPath (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::SHORTESTPATH")
  (make-package "AUTO_SMART_FACTORY::SHORTESTPATH"))
(unless (find-package "AUTO_SMART_FACTORY::SHORTESTPATHREQUEST")
  (make-package "AUTO_SMART_FACTORY::SHORTESTPATHREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::SHORTESTPATHRESPONSE")
  (make-package "AUTO_SMART_FACTORY::SHORTESTPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass auto_smart_factory::shortestPathRequest
  :super ros::object
  :slots (_p1 _p2 _robot ))

(defmethod auto_smart_factory::shortestPathRequest
  (:init
   (&key
    ((:p1 __p1) (instance geometry_msgs::Point :init))
    ((:p2 __p2) (instance geometry_msgs::Point :init))
    ((:robot __robot) (instance auto_smart_factory::RobotConfiguration :init))
    )
   (send-super :init)
   (setq _p1 __p1)
   (setq _p2 __p2)
   (setq _robot __robot)
   self)
  (:p1
   (&rest __p1)
   (if (keywordp (car __p1))
       (send* _p1 __p1)
     (progn
       (if __p1 (setq _p1 (car __p1)))
       _p1)))
  (:p2
   (&rest __p2)
   (if (keywordp (car __p2))
       (send* _p2 __p2)
     (progn
       (if __p2 (setq _p2 (car __p2)))
       _p2)))
  (:robot
   (&rest __robot)
   (if (keywordp (car __robot))
       (send* _robot __robot)
     (progn
       (if __robot (setq _robot (car __robot)))
       _robot)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _p1
    (send _p1 :serialization-length)
    ;; geometry_msgs/Point _p2
    (send _p2 :serialization-length)
    ;; auto_smart_factory/RobotConfiguration _robot
    (send _robot :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _p1
       (send _p1 :serialize s)
     ;; geometry_msgs/Point _p2
       (send _p2 :serialize s)
     ;; auto_smart_factory/RobotConfiguration _robot
       (send _robot :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _p1
     (send _p1 :deserialize buf ptr-) (incf ptr- (send _p1 :serialization-length))
   ;; geometry_msgs/Point _p2
     (send _p2 :deserialize buf ptr-) (incf ptr- (send _p2 :serialization-length))
   ;; auto_smart_factory/RobotConfiguration _robot
     (send _robot :deserialize buf ptr-) (incf ptr- (send _robot :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::shortestPathResponse
  :super ros::object
  :slots (_resultPoints _length ))

(defmethod auto_smart_factory::shortestPathResponse
  (:init
   (&key
    ((:resultPoints __resultPoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _resultPoints __resultPoints)
   (setq _length (float __length))
   self)
  (:resultPoints
   (&rest __resultPoints)
   (if (keywordp (car __resultPoints))
       (send* _resultPoints __resultPoints)
     (progn
       (if __resultPoints (setq _resultPoints (car __resultPoints)))
       _resultPoints)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _resultPoints
    (apply #'+ (send-all _resultPoints :serialization-length)) 4
    ;; float64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _resultPoints
     (write-long (length _resultPoints) s)
     (dolist (elem _resultPoints)
       (send elem :serialize s)
       )
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _resultPoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resultPoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _resultPoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass auto_smart_factory::shortestPath
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::shortestPath :md5sum-) "e02be1ddd821db1040e02af717ecac84")
(setf (get auto_smart_factory::shortestPath :datatype-) "auto_smart_factory/shortestPath")
(setf (get auto_smart_factory::shortestPath :request) auto_smart_factory::shortestPathRequest)
(setf (get auto_smart_factory::shortestPath :response) auto_smart_factory::shortestPathResponse)

(defmethod auto_smart_factory::shortestPathRequest
  (:response () (instance auto_smart_factory::shortestPathResponse :init)))

(setf (get auto_smart_factory::shortestPathRequest :md5sum-) "e02be1ddd821db1040e02af717ecac84")
(setf (get auto_smart_factory::shortestPathRequest :datatype-) "auto_smart_factory/shortestPathRequest")
(setf (get auto_smart_factory::shortestPathRequest :definition-)
      "geometry_msgs/Point p1
geometry_msgs/Point p2
RobotConfiguration robot

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
geometry_msgs/Point[] resultPoints
float64 length


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get auto_smart_factory::shortestPathResponse :md5sum-) "e02be1ddd821db1040e02af717ecac84")
(setf (get auto_smart_factory::shortestPathResponse :datatype-) "auto_smart_factory/shortestPathResponse")
(setf (get auto_smart_factory::shortestPathResponse :definition-)
      "geometry_msgs/Point p1
geometry_msgs/Point p2
RobotConfiguration robot

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
geometry_msgs/Point[] resultPoints
float64 length


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :auto_smart_factory/shortestPath "e02be1ddd821db1040e02af717ecac84")


