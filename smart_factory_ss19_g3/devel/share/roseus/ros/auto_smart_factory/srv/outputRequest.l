;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::outputRequest)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'outputRequest (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::OUTPUTREQUEST")
  (make-package "AUTO_SMART_FACTORY::OUTPUTREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::OUTPUTREQUESTREQUEST")
  (make-package "AUTO_SMART_FACTORY::OUTPUTREQUESTREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::OUTPUTREQUESTRESPONSE")
  (make-package "AUTO_SMART_FACTORY::OUTPUTREQUESTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass auto_smart_factory::outputRequestRequest
  :super ros::object
  :slots (_posStart _idTrays _idGoal _robot ))

(defmethod auto_smart_factory::outputRequestRequest
  (:init
   (&key
    ((:posStart __posStart) (instance geometry_msgs::Point :init))
    ((:idTrays __idTrays) (make-array 0 :initial-element 0 :element-type :integer))
    ((:idGoal __idGoal) (make-array 0 :initial-element 0 :element-type :integer))
    ((:robot __robot) (instance auto_smart_factory::RobotConfiguration :init))
    )
   (send-super :init)
   (setq _posStart __posStart)
   (setq _idTrays __idTrays)
   (setq _idGoal __idGoal)
   (setq _robot __robot)
   self)
  (:posStart
   (&rest __posStart)
   (if (keywordp (car __posStart))
       (send* _posStart __posStart)
     (progn
       (if __posStart (setq _posStart (car __posStart)))
       _posStart)))
  (:idTrays
   (&optional __idTrays)
   (if __idTrays (setq _idTrays __idTrays)) _idTrays)
  (:idGoal
   (&optional __idGoal)
   (if __idGoal (setq _idGoal __idGoal)) _idGoal)
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
    ;; uint32[] _idTrays
    (* 4    (length _idTrays)) 4
    ;; uint32[] _idGoal
    (* 4    (length _idGoal)) 4
    ;; auto_smart_factory/RobotConfiguration _robot
    (send _robot :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _posStart
       (send _posStart :serialize s)
     ;; uint32[] _idTrays
     (write-long (length _idTrays) s)
     (dotimes (i (length _idTrays))
       (write-long (elt _idTrays i) s)
       )
     ;; uint32[] _idGoal
     (write-long (length _idGoal) s)
     (dotimes (i (length _idGoal))
       (write-long (elt _idGoal i) s)
       )
     ;; auto_smart_factory/RobotConfiguration _robot
       (send _robot :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _posStart
     (send _posStart :deserialize buf ptr-) (incf ptr- (send _posStart :serialization-length))
   ;; uint32[] _idTrays
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _idTrays (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _idTrays i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _idGoal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _idGoal (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _idGoal i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; auto_smart_factory/RobotConfiguration _robot
     (send _robot :deserialize buf ptr-) (incf ptr- (send _robot :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::outputRequestResponse
  :super ros::object
  :slots (_pointsToTray _pointsToOutput _idBest _length ))

(defmethod auto_smart_factory::outputRequestResponse
  (:init
   (&key
    ((:pointsToTray __pointsToTray) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:pointsToOutput __pointsToOutput) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:idBest __idBest) 0)
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _pointsToTray __pointsToTray)
   (setq _pointsToOutput __pointsToOutput)
   (setq _idBest (round __idBest))
   (setq _length (float __length))
   self)
  (:pointsToTray
   (&rest __pointsToTray)
   (if (keywordp (car __pointsToTray))
       (send* _pointsToTray __pointsToTray)
     (progn
       (if __pointsToTray (setq _pointsToTray (car __pointsToTray)))
       _pointsToTray)))
  (:pointsToOutput
   (&rest __pointsToOutput)
   (if (keywordp (car __pointsToOutput))
       (send* _pointsToOutput __pointsToOutput)
     (progn
       (if __pointsToOutput (setq _pointsToOutput (car __pointsToOutput)))
       _pointsToOutput)))
  (:idBest
   (&optional __idBest)
   (if __idBest (setq _idBest __idBest)) _idBest)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _pointsToTray
    (apply #'+ (send-all _pointsToTray :serialization-length)) 4
    ;; geometry_msgs/Point[] _pointsToOutput
    (apply #'+ (send-all _pointsToOutput :serialization-length)) 4
    ;; uint32 _idBest
    4
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
     ;; geometry_msgs/Point[] _pointsToOutput
     (write-long (length _pointsToOutput) s)
     (dolist (elem _pointsToOutput)
       (send elem :serialize s)
       )
     ;; uint32 _idBest
       (write-long _idBest s)
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
   ;; geometry_msgs/Point[] _pointsToOutput
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointsToOutput (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _pointsToOutput)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _idBest
     (setq _idBest (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass auto_smart_factory::outputRequest
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::outputRequest :md5sum-) "fe895386dfaeb1d8df370061246b0fbb")
(setf (get auto_smart_factory::outputRequest :datatype-) "auto_smart_factory/outputRequest")
(setf (get auto_smart_factory::outputRequest :request) auto_smart_factory::outputRequestRequest)
(setf (get auto_smart_factory::outputRequest :response) auto_smart_factory::outputRequestResponse)

(defmethod auto_smart_factory::outputRequestRequest
  (:response () (instance auto_smart_factory::outputRequestResponse :init)))

(setf (get auto_smart_factory::outputRequestRequest :md5sum-) "fe895386dfaeb1d8df370061246b0fbb")
(setf (get auto_smart_factory::outputRequestRequest :datatype-) "auto_smart_factory/outputRequestRequest")
(setf (get auto_smart_factory::outputRequestRequest :definition-)
      "geometry_msgs/Point posStart
uint32[] idTrays
uint32[] idGoal
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
geometry_msgs/Point[] pointsToOutput
uint32 idBest
float64 length


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get auto_smart_factory::outputRequestResponse :md5sum-) "fe895386dfaeb1d8df370061246b0fbb")
(setf (get auto_smart_factory::outputRequestResponse :datatype-) "auto_smart_factory/outputRequestResponse")
(setf (get auto_smart_factory::outputRequestResponse :definition-)
      "geometry_msgs/Point posStart
uint32[] idTrays
uint32[] idGoal
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
geometry_msgs/Point[] pointsToOutput
uint32 idBest
float64 length


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :auto_smart_factory/outputRequest "fe895386dfaeb1d8df370061246b0fbb")


