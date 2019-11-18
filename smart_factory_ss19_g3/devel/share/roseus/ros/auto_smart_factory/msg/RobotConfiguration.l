;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::RobotConfiguration)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'RobotConfiguration (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::ROBOTCONFIGURATION")
  (make-package "AUTO_SMART_FACTORY::ROBOTCONFIGURATION"))

(in-package "ROS")
;;//! \htmlinclude RobotConfiguration.msg.html


(defclass auto_smart_factory::RobotConfiguration
  :super ros::object
  :slots (_type_name _charging_rate _discharging_rate _min_linear_vel _max_linear_vel _max_angular_vel _radius _max_load ))

(defmethod auto_smart_factory::RobotConfiguration
  (:init
   (&key
    ((:type_name __type_name) "")
    ((:charging_rate __charging_rate) 0.0)
    ((:discharging_rate __discharging_rate) 0.0)
    ((:min_linear_vel __min_linear_vel) 0.0)
    ((:max_linear_vel __max_linear_vel) 0.0)
    ((:max_angular_vel __max_angular_vel) 0.0)
    ((:radius __radius) 0.0)
    ((:max_load __max_load) 0.0)
    )
   (send-super :init)
   (setq _type_name (string __type_name))
   (setq _charging_rate (float __charging_rate))
   (setq _discharging_rate (float __discharging_rate))
   (setq _min_linear_vel (float __min_linear_vel))
   (setq _max_linear_vel (float __max_linear_vel))
   (setq _max_angular_vel (float __max_angular_vel))
   (setq _radius (float __radius))
   (setq _max_load (float __max_load))
   self)
  (:type_name
   (&optional __type_name)
   (if __type_name (setq _type_name __type_name)) _type_name)
  (:charging_rate
   (&optional __charging_rate)
   (if __charging_rate (setq _charging_rate __charging_rate)) _charging_rate)
  (:discharging_rate
   (&optional __discharging_rate)
   (if __discharging_rate (setq _discharging_rate __discharging_rate)) _discharging_rate)
  (:min_linear_vel
   (&optional __min_linear_vel)
   (if __min_linear_vel (setq _min_linear_vel __min_linear_vel)) _min_linear_vel)
  (:max_linear_vel
   (&optional __max_linear_vel)
   (if __max_linear_vel (setq _max_linear_vel __max_linear_vel)) _max_linear_vel)
  (:max_angular_vel
   (&optional __max_angular_vel)
   (if __max_angular_vel (setq _max_angular_vel __max_angular_vel)) _max_angular_vel)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:max_load
   (&optional __max_load)
   (if __max_load (setq _max_load __max_load)) _max_load)
  (:serialization-length
   ()
   (+
    ;; string _type_name
    4 (length _type_name)
    ;; float32 _charging_rate
    4
    ;; float32 _discharging_rate
    4
    ;; float32 _min_linear_vel
    4
    ;; float32 _max_linear_vel
    4
    ;; float32 _max_angular_vel
    4
    ;; float32 _radius
    4
    ;; float32 _max_load
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type_name
       (write-long (length _type_name) s) (princ _type_name s)
     ;; float32 _charging_rate
       (sys::poke _charging_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _discharging_rate
       (sys::poke _discharging_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_linear_vel
       (sys::poke _min_linear_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_linear_vel
       (sys::poke _max_linear_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_angular_vel
       (sys::poke _max_angular_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_load
       (sys::poke _max_load (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _charging_rate
     (setq _charging_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _discharging_rate
     (setq _discharging_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_linear_vel
     (setq _min_linear_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_linear_vel
     (setq _max_linear_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_angular_vel
     (setq _max_angular_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_load
     (setq _max_load (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get auto_smart_factory::RobotConfiguration :md5sum-) "a088bac167b7075ab4169c49586042e9")
(setf (get auto_smart_factory::RobotConfiguration :datatype-) "auto_smart_factory/RobotConfiguration")
(setf (get auto_smart_factory::RobotConfiguration :definition-)
      "# name of this robot type
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

")



(provide :auto_smart_factory/RobotConfiguration "a088bac167b7075ab4169c49586042e9")


