;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::localPath)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'localPath (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::LOCALPATH")
  (make-package "AUTO_SMART_FACTORY::LOCALPATH"))
(unless (find-package "AUTO_SMART_FACTORY::LOCALPATHREQUEST")
  (make-package "AUTO_SMART_FACTORY::LOCALPATHREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::LOCALPATHRESPONSE")
  (make-package "AUTO_SMART_FACTORY::LOCALPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass auto_smart_factory::localPathRequest
  :super ros::object
  :slots (_trayID _obstacleLeft _obstacleFront _obstacleRight _robot ))

(defmethod auto_smart_factory::localPathRequest
  (:init
   (&key
    ((:trayID __trayID) 0)
    ((:obstacleLeft __obstacleLeft) (instance geometry_msgs::Point :init))
    ((:obstacleFront __obstacleFront) (instance geometry_msgs::Point :init))
    ((:obstacleRight __obstacleRight) (instance geometry_msgs::Point :init))
    ((:robot __robot) (instance auto_smart_factory::RobotConfiguration :init))
    )
   (send-super :init)
   (setq _trayID (round __trayID))
   (setq _obstacleLeft __obstacleLeft)
   (setq _obstacleFront __obstacleFront)
   (setq _obstacleRight __obstacleRight)
   (setq _robot __robot)
   self)
  (:trayID
   (&optional __trayID)
   (if __trayID (setq _trayID __trayID)) _trayID)
  (:obstacleLeft
   (&rest __obstacleLeft)
   (if (keywordp (car __obstacleLeft))
       (send* _obstacleLeft __obstacleLeft)
     (progn
       (if __obstacleLeft (setq _obstacleLeft (car __obstacleLeft)))
       _obstacleLeft)))
  (:obstacleFront
   (&rest __obstacleFront)
   (if (keywordp (car __obstacleFront))
       (send* _obstacleFront __obstacleFront)
     (progn
       (if __obstacleFront (setq _obstacleFront (car __obstacleFront)))
       _obstacleFront)))
  (:obstacleRight
   (&rest __obstacleRight)
   (if (keywordp (car __obstacleRight))
       (send* _obstacleRight __obstacleRight)
     (progn
       (if __obstacleRight (setq _obstacleRight (car __obstacleRight)))
       _obstacleRight)))
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
    ;; uint32 _trayID
    4
    ;; geometry_msgs/Point _obstacleLeft
    (send _obstacleLeft :serialization-length)
    ;; geometry_msgs/Point _obstacleFront
    (send _obstacleFront :serialization-length)
    ;; geometry_msgs/Point _obstacleRight
    (send _obstacleRight :serialization-length)
    ;; auto_smart_factory/RobotConfiguration _robot
    (send _robot :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _trayID
       (write-long _trayID s)
     ;; geometry_msgs/Point _obstacleLeft
       (send _obstacleLeft :serialize s)
     ;; geometry_msgs/Point _obstacleFront
       (send _obstacleFront :serialize s)
     ;; geometry_msgs/Point _obstacleRight
       (send _obstacleRight :serialize s)
     ;; auto_smart_factory/RobotConfiguration _robot
       (send _robot :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _trayID
     (setq _trayID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _obstacleLeft
     (send _obstacleLeft :deserialize buf ptr-) (incf ptr- (send _obstacleLeft :serialization-length))
   ;; geometry_msgs/Point _obstacleFront
     (send _obstacleFront :deserialize buf ptr-) (incf ptr- (send _obstacleFront :serialization-length))
   ;; geometry_msgs/Point _obstacleRight
     (send _obstacleRight :deserialize buf ptr-) (incf ptr- (send _obstacleRight :serialization-length))
   ;; auto_smart_factory/RobotConfiguration _robot
     (send _robot :deserialize buf ptr-) (incf ptr- (send _robot :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::localPathResponse
  :super ros::object
  :slots (_pointsToTray _length ))

(defmethod auto_smart_factory::localPathResponse
  (:init
   (&key
    ((:pointsToTray __pointsToTray) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _pointsToTray __pointsToTray)
   (setq _length (float __length))
   self)
  (:pointsToTray
   (&rest __pointsToTray)
   (if (keywordp (car __pointsToTray))
       (send* _pointsToTray __pointsToTray)
     (progn
       (if __pointsToTray (setq _pointsToTray (car __pointsToTray)))
       _pointsToTray)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _pointsToTray
    (apply #'+ (send-all _pointsToTray :serialization-length)) 4
    ;; float64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _pointsToTray
     (write-long (length _pointsToTray) s)
     (dolist (elem _pointsToTray)
       (send elem :serialize s)
       )
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _pointsToTray
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointsToTray (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _pointsToTray)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass auto_smart_factory::localPath
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::localPath :md5sum-) "37b8d65f792389d92caeae306153ccb7")
(setf (get auto_smart_factory::localPath :datatype-) "auto_smart_factory/localPath")
(setf (get auto_smart_factory::localPath :request) auto_smart_factory::localPathRequest)
(setf (get auto_smart_factory::localPath :response) auto_smart_factory::localPathResponse)

(defmethod auto_smart_factory::localPathRequest
  (:response () (instance auto_smart_factory::localPathResponse :init)))

(setf (get auto_smart_factory::localPathRequest :md5sum-) "37b8d65f792389d92caeae306153ccb7")
(setf (get auto_smart_factory::localPathRequest :datatype-) "auto_smart_factory/localPathRequest")
(setf (get auto_smart_factory::localPathRequest :definition-)
      "uint32 trayID
geometry_msgs/Point obstacleLeft
geometry_msgs/Point obstacleFront
geometry_msgs/Point obstacleRight
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
geometry_msgs/Point[] pointsToTray
float64 length

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get auto_smart_factory::localPathResponse :md5sum-) "37b8d65f792389d92caeae306153ccb7")
(setf (get auto_smart_factory::localPathResponse :datatype-) "auto_smart_factory/localPathResponse")
(setf (get auto_smart_factory::localPathResponse :definition-)
      "uint32 trayID
geometry_msgs/Point obstacleLeft
geometry_msgs/Point obstacleFront
geometry_msgs/Point obstacleRight
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
geometry_msgs/Point[] pointsToTray
float64 length

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :auto_smart_factory/localPath "37b8d65f792389d92caeae306153ccb7")


