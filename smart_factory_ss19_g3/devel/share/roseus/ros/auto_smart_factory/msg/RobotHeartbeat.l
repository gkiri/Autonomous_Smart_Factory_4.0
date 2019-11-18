;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::RobotHeartbeat)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'RobotHeartbeat (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::ROBOTHEARTBEAT")
  (make-package "AUTO_SMART_FACTORY::ROBOTHEARTBEAT"))

(in-package "ROS")
;;//! \htmlinclude RobotHeartbeat.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass auto_smart_factory::RobotHeartbeat
  :super ros::object
  :slots (_id _idle _position _orientation _battery_level _eta _with_package _queue_length ))

(defmethod auto_smart_factory::RobotHeartbeat
  (:init
   (&key
    ((:id __id) "")
    ((:idle __idle) nil)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:orientation __orientation) 0.0)
    ((:battery_level __battery_level) 0.0)
    ((:eta __eta) 0.0)
    ((:with_package __with_package) nil)
    ((:queue_length __queue_length) 0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _idle __idle)
   (setq _position __position)
   (setq _orientation (float __orientation))
   (setq _battery_level (float __battery_level))
   (setq _eta (float __eta))
   (setq _with_package __with_package)
   (setq _queue_length (round __queue_length))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:idle
   (&optional __idle)
   (if __idle (setq _idle __idle)) _idle)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:battery_level
   (&optional __battery_level)
   (if __battery_level (setq _battery_level __battery_level)) _battery_level)
  (:eta
   (&optional __eta)
   (if __eta (setq _eta __eta)) _eta)
  (:with_package
   (&optional __with_package)
   (if __with_package (setq _with_package __with_package)) _with_package)
  (:queue_length
   (&optional __queue_length)
   (if __queue_length (setq _queue_length __queue_length)) _queue_length)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; bool _idle
    1
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float32 _orientation
    4
    ;; float32 _battery_level
    4
    ;; float32 _eta
    4
    ;; bool _with_package
    1
    ;; uint8 _queue_length
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; bool _idle
       (if _idle (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float32 _orientation
       (sys::poke _orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_level
       (sys::poke _battery_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _eta
       (sys::poke _eta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _with_package
       (if _with_package (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _queue_length
       (write-byte _queue_length s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _idle
     (setq _idle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _orientation
     (setq _orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_level
     (setq _battery_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _eta
     (setq _eta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _with_package
     (setq _with_package (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _queue_length
     (setq _queue_length (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get auto_smart_factory::RobotHeartbeat :md5sum-) "ba85488467034734d06763799c12f823")
(setf (get auto_smart_factory::RobotHeartbeat :datatype-) "auto_smart_factory/RobotHeartbeat")
(setf (get auto_smart_factory::RobotHeartbeat :definition-)
      "# robot id
string id

# is the robot idle?
bool idle

# robot position
geometry_msgs/Point position

# robot orientation
float32 orientation

# battery state of robot 0 - 100
float32 battery_level

# eta for a robot
float32 eta

# is it carring a package?
bool with_package

# package queue size
uint8 queue_length

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :auto_smart_factory/RobotHeartbeat "ba85488467034734d06763799c12f823")


