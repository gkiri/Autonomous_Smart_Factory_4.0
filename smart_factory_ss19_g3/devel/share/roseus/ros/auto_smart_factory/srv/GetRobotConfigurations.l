;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::GetRobotConfigurations)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'GetRobotConfigurations (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::GETROBOTCONFIGURATIONS")
  (make-package "AUTO_SMART_FACTORY::GETROBOTCONFIGURATIONS"))
(unless (find-package "AUTO_SMART_FACTORY::GETROBOTCONFIGURATIONSREQUEST")
  (make-package "AUTO_SMART_FACTORY::GETROBOTCONFIGURATIONSREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::GETROBOTCONFIGURATIONSRESPONSE")
  (make-package "AUTO_SMART_FACTORY::GETROBOTCONFIGURATIONSRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::GetRobotConfigurationsRequest
  :super ros::object
  :slots ())

(defmethod auto_smart_factory::GetRobotConfigurationsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass auto_smart_factory::GetRobotConfigurationsResponse
  :super ros::object
  :slots (_configs ))

(defmethod auto_smart_factory::GetRobotConfigurationsResponse
  (:init
   (&key
    ((:configs __configs) (let (r) (dotimes (i 0) (push (instance auto_smart_factory::RobotConfiguration :init) r)) r))
    )
   (send-super :init)
   (setq _configs __configs)
   self)
  (:configs
   (&rest __configs)
   (if (keywordp (car __configs))
       (send* _configs __configs)
     (progn
       (if __configs (setq _configs (car __configs)))
       _configs)))
  (:serialization-length
   ()
   (+
    ;; auto_smart_factory/RobotConfiguration[] _configs
    (apply #'+ (send-all _configs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; auto_smart_factory/RobotConfiguration[] _configs
     (write-long (length _configs) s)
     (dolist (elem _configs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; auto_smart_factory/RobotConfiguration[] _configs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _configs (let (r) (dotimes (i n) (push (instance auto_smart_factory::RobotConfiguration :init) r)) r))
     (dolist (elem- _configs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass auto_smart_factory::GetRobotConfigurations
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::GetRobotConfigurations :md5sum-) "4af00ad841eaed229126db0b4270d254")
(setf (get auto_smart_factory::GetRobotConfigurations :datatype-) "auto_smart_factory/GetRobotConfigurations")
(setf (get auto_smart_factory::GetRobotConfigurations :request) auto_smart_factory::GetRobotConfigurationsRequest)
(setf (get auto_smart_factory::GetRobotConfigurations :response) auto_smart_factory::GetRobotConfigurationsResponse)

(defmethod auto_smart_factory::GetRobotConfigurationsRequest
  (:response () (instance auto_smart_factory::GetRobotConfigurationsResponse :init)))

(setf (get auto_smart_factory::GetRobotConfigurationsRequest :md5sum-) "4af00ad841eaed229126db0b4270d254")
(setf (get auto_smart_factory::GetRobotConfigurationsRequest :datatype-) "auto_smart_factory/GetRobotConfigurationsRequest")
(setf (get auto_smart_factory::GetRobotConfigurationsRequest :definition-)
      "---
RobotConfiguration[] configs

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
")

(setf (get auto_smart_factory::GetRobotConfigurationsResponse :md5sum-) "4af00ad841eaed229126db0b4270d254")
(setf (get auto_smart_factory::GetRobotConfigurationsResponse :datatype-) "auto_smart_factory/GetRobotConfigurationsResponse")
(setf (get auto_smart_factory::GetRobotConfigurationsResponse :definition-)
      "---
RobotConfiguration[] configs

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
")



(provide :auto_smart_factory/GetRobotConfigurations "4af00ad841eaed229126db0b4270d254")


