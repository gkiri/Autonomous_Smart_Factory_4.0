;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::bestGoal)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'bestGoal (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::BESTGOAL")
  (make-package "AUTO_SMART_FACTORY::BESTGOAL"))
(unless (find-package "AUTO_SMART_FACTORY::BESTGOALREQUEST")
  (make-package "AUTO_SMART_FACTORY::BESTGOALREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::BESTGOALRESPONSE")
  (make-package "AUTO_SMART_FACTORY::BESTGOALRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass auto_smart_factory::bestGoalRequest
  :super ros::object
  :slots (_posStart _idTargets _robot ))

(defmethod auto_smart_factory::bestGoalRequest
  (:init
   (&key
    ((:posStart __posStart) (instance geometry_msgs::Point :init))
    ((:idTargets __idTargets) (make-array 0 :initial-element 0 :element-type :integer))
    ((:robot __robot) (instance auto_smart_factory::RobotConfiguration :init))
    )
   (send-super :init)
   (setq _posStart __posStart)
   (setq _idTargets __idTargets)
   (setq _robot __robot)
   self)
  (:posStart
   (&rest __posStart)
   (if (keywordp (car __posStart))
       (send* _posStart __posStart)
     (progn
       (if __posStart (setq _posStart (car __posStart)))
       _posStart)))
  (:idTargets
   (&optional __idTargets)
   (if __idTargets (setq _idTargets __idTargets)) _idTargets)
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
    ;; geometry_msgs/Point _posStart
    (send _posStart :serialization-length)
    ;; uint32[] _idTargets
    (* 4    (length _idTargets)) 4
    ;; auto_smart_factory/RobotConfiguration _robot
    (send _robot :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _posStart
       (send _posStart :serialize s)
     ;; uint32[] _idTargets
     (write-long (length _idTargets) s)
     (dotimes (i (length _idTargets))
       (write-long (elt _idTargets i) s)
       )
     ;; auto_smart_factory/RobotConfiguration _robot
       (send _robot :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _posStart
     (send _posStart :deserialize buf ptr-) (incf ptr- (send _posStart :serialization-length))
   ;; uint32[] _idTargets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _idTargets (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _idTargets i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; auto_smart_factory/RobotConfiguration _robot
     (send _robot :deserialize buf ptr-) (incf ptr- (send _robot :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::bestGoalResponse
  :super ros::object
  :slots (_resultPoints _idBestTray _length ))

(defmethod auto_smart_factory::bestGoalResponse
  (:init
   (&key
    ((:resultPoints __resultPoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:idBestTray __idBestTray) 0)
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _resultPoints __resultPoints)
   (setq _idBestTray (round __idBestTray))
   (setq _length (float __length))
   self)
  (:resultPoints
   (&rest __resultPoints)
   (if (keywordp (car __resultPoints))
       (send* _resultPoints __resultPoints)
     (progn
       (if __resultPoints (setq _resultPoints (car __resultPoints)))
       _resultPoints)))
  (:idBestTray
   (&optional __idBestTray)
   (if __idBestTray (setq _idBestTray __idBestTray)) _idBestTray)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _resultPoints
    (apply #'+ (send-all _resultPoints :serialization-length)) 4
    ;; uint32 _idBestTray
    4
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
     ;; uint32 _idBestTray
       (write-long _idBestTray s)
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
   ;; uint32 _idBestTray
     (setq _idBestTray (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass auto_smart_factory::bestGoal
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::bestGoal :md5sum-) "5663ef057acd0d4321cbcd1579606742")
(setf (get auto_smart_factory::bestGoal :datatype-) "auto_smart_factory/bestGoal")
(setf (get auto_smart_factory::bestGoal :request) auto_smart_factory::bestGoalRequest)
(setf (get auto_smart_factory::bestGoal :response) auto_smart_factory::bestGoalResponse)

(defmethod auto_smart_factory::bestGoalRequest
  (:response () (instance auto_smart_factory::bestGoalResponse :init)))

(setf (get auto_smart_factory::bestGoalRequest :md5sum-) "5663ef057acd0d4321cbcd1579606742")
(setf (get auto_smart_factory::bestGoalRequest :datatype-) "auto_smart_factory/bestGoalRequest")
(setf (get auto_smart_factory::bestGoalRequest :definition-)
      "geometry_msgs/Point posStart
uint32[] idTargets
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
uint32 idBestTray
float64 length


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get auto_smart_factory::bestGoalResponse :md5sum-) "5663ef057acd0d4321cbcd1579606742")
(setf (get auto_smart_factory::bestGoalResponse :datatype-) "auto_smart_factory/bestGoalResponse")
(setf (get auto_smart_factory::bestGoalResponse :definition-)
      "geometry_msgs/Point posStart
uint32[] idTargets
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
uint32 idBestTray
float64 length


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :auto_smart_factory/bestGoal "5663ef057acd0d4321cbcd1579606742")


