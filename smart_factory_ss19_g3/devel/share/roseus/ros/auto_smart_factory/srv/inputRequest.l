;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::inputRequest)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'inputRequest (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::INPUTREQUEST")
  (make-package "AUTO_SMART_FACTORY::INPUTREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::INPUTREQUESTREQUEST")
  (make-package "AUTO_SMART_FACTORY::INPUTREQUESTREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::INPUTREQUESTRESPONSE")
  (make-package "AUTO_SMART_FACTORY::INPUTREQUESTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass auto_smart_factory::inputRequestRequest
  :super ros::object
  :slots (_posStart _idTrays _idInput _robot ))

(defmethod auto_smart_factory::inputRequestRequest
  (:init
   (&key
    ((:posStart __posStart) (instance geometry_msgs::Point :init))
    ((:idTrays __idTrays) (make-array 0 :initial-element 0 :element-type :integer))
    ((:idInput __idInput) (make-array 0 :initial-element 0 :element-type :integer))
    ((:robot __robot) (instance auto_smart_factory::RobotConfiguration :init))
    )
   (send-super :init)
   (setq _posStart __posStart)
   (setq _idTrays __idTrays)
   (setq _idInput __idInput)
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
  (:idInput
   (&optional __idInput)
   (if __idInput (setq _idInput __idInput)) _idInput)
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
    ;; uint32[] _idInput
    (* 4    (length _idInput)) 4
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
     ;; uint32[] _idInput
     (write-long (length _idInput) s)
     (dotimes (i (length _idInput))
       (write-long (elt _idInput i) s)
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
   ;; uint32[] _idInput
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _idInput (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _idInput i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; auto_smart_factory/RobotConfiguration _robot
     (send _robot :deserialize buf ptr-) (incf ptr- (send _robot :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::inputRequestResponse
  :super ros::object
  :slots (_pointsToInput _pointsToTray _idBest _length ))

(defmethod auto_smart_factory::inputRequestResponse
  (:init
   (&key
    ((:pointsToInput __pointsToInput) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:pointsToTray __pointsToTray) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:idBest __idBest) 0)
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _pointsToInput __pointsToInput)
   (setq _pointsToTray __pointsToTray)
   (setq _idBest (round __idBest))
   (setq _length (float __length))
   self)
  (:pointsToInput
   (&rest __pointsToInput)
   (if (keywordp (car __pointsToInput))
       (send* _pointsToInput __pointsToInput)
     (progn
       (if __pointsToInput (setq _pointsToInput (car __pointsToInput)))
       _pointsToInput)))
  (:pointsToTray
   (&rest __pointsToTray)
   (if (keywordp (car __pointsToTray))
       (send* _pointsToTray __pointsToTray)
     (progn
       (if __pointsToTray (setq _pointsToTray (car __pointsToTray)))
       _pointsToTray)))
  (:idBest
   (&optional __idBest)
   (if __idBest (setq _idBest __idBest)) _idBest)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _pointsToInput
    (apply #'+ (send-all _pointsToInput :serialization-length)) 4
    ;; geometry_msgs/Point[] _pointsToTray
    (apply #'+ (send-all _pointsToTray :serialization-length)) 4
    ;; uint32 _idBest
    4
    ;; float64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _pointsToInput
     (write-long (length _pointsToInput) s)
     (dolist (elem _pointsToInput)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _pointsToTray
     (write-long (length _pointsToTray) s)
     (dolist (elem _pointsToTray)
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
   ;; geometry_msgs/Point[] _pointsToInput
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointsToInput (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _pointsToInput)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _pointsToTray
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointsToTray (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _pointsToTray)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _idBest
     (setq _idBest (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass auto_smart_factory::inputRequest
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::inputRequest :md5sum-) "84b93cb25f9b147c760d7e90b220604b")
(setf (get auto_smart_factory::inputRequest :datatype-) "auto_smart_factory/inputRequest")
(setf (get auto_smart_factory::inputRequest :request) auto_smart_factory::inputRequestRequest)
(setf (get auto_smart_factory::inputRequest :response) auto_smart_factory::inputRequestResponse)

(defmethod auto_smart_factory::inputRequestRequest
  (:response () (instance auto_smart_factory::inputRequestResponse :init)))

(setf (get auto_smart_factory::inputRequestRequest :md5sum-) "84b93cb25f9b147c760d7e90b220604b")
(setf (get auto_smart_factory::inputRequestRequest :datatype-) "auto_smart_factory/inputRequestRequest")
(setf (get auto_smart_factory::inputRequestRequest :definition-)
      "geometry_msgs/Point posStart
uint32[] idTrays
uint32[] idInput
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
geometry_msgs/Point[] pointsToInput
geometry_msgs/Point[] pointsToTray
uint32 idBest
float64 length


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get auto_smart_factory::inputRequestResponse :md5sum-) "84b93cb25f9b147c760d7e90b220604b")
(setf (get auto_smart_factory::inputRequestResponse :datatype-) "auto_smart_factory/inputRequestResponse")
(setf (get auto_smart_factory::inputRequestResponse :definition-)
      "geometry_msgs/Point posStart
uint32[] idTrays
uint32[] idInput
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
geometry_msgs/Point[] pointsToInput
geometry_msgs/Point[] pointsToTray
uint32 idBest
float64 length


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :auto_smart_factory/inputRequest "84b93cb25f9b147c760d7e90b220604b")


