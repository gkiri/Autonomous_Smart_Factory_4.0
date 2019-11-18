;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::RegisterAgentCharging)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'RegisterAgentCharging (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::REGISTERAGENTCHARGING")
  (make-package "AUTO_SMART_FACTORY::REGISTERAGENTCHARGING"))
(unless (find-package "AUTO_SMART_FACTORY::REGISTERAGENTCHARGINGREQUEST")
  (make-package "AUTO_SMART_FACTORY::REGISTERAGENTCHARGINGREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::REGISTERAGENTCHARGINGRESPONSE")
  (make-package "AUTO_SMART_FACTORY::REGISTERAGENTCHARGINGRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::RegisterAgentChargingRequest
  :super ros::object
  :slots (_agent_id _robot_configuration _battery_level ))

(defmethod auto_smart_factory::RegisterAgentChargingRequest
  (:init
   (&key
    ((:agent_id __agent_id) "")
    ((:robot_configuration __robot_configuration) (instance auto_smart_factory::RobotConfiguration :init))
    ((:battery_level __battery_level) 0.0)
    )
   (send-super :init)
   (setq _agent_id (string __agent_id))
   (setq _robot_configuration __robot_configuration)
   (setq _battery_level (float __battery_level))
   self)
  (:agent_id
   (&optional __agent_id)
   (if __agent_id (setq _agent_id __agent_id)) _agent_id)
  (:robot_configuration
   (&rest __robot_configuration)
   (if (keywordp (car __robot_configuration))
       (send* _robot_configuration __robot_configuration)
     (progn
       (if __robot_configuration (setq _robot_configuration (car __robot_configuration)))
       _robot_configuration)))
  (:battery_level
   (&optional __battery_level)
   (if __battery_level (setq _battery_level __battery_level)) _battery_level)
  (:serialization-length
   ()
   (+
    ;; string _agent_id
    4 (length _agent_id)
    ;; auto_smart_factory/RobotConfiguration _robot_configuration
    (send _robot_configuration :serialization-length)
    ;; float32 _battery_level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _agent_id
       (write-long (length _agent_id) s) (princ _agent_id s)
     ;; auto_smart_factory/RobotConfiguration _robot_configuration
       (send _robot_configuration :serialize s)
     ;; float32 _battery_level
       (sys::poke _battery_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _agent_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _agent_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; auto_smart_factory/RobotConfiguration _robot_configuration
     (send _robot_configuration :deserialize buf ptr-) (incf ptr- (send _robot_configuration :serialization-length))
   ;; float32 _battery_level
     (setq _battery_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass auto_smart_factory::RegisterAgentChargingResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::RegisterAgentChargingResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass auto_smart_factory::RegisterAgentCharging
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::RegisterAgentCharging :md5sum-) "11168f4e7f6e2573e6e16113b1b364fd")
(setf (get auto_smart_factory::RegisterAgentCharging :datatype-) "auto_smart_factory/RegisterAgentCharging")
(setf (get auto_smart_factory::RegisterAgentCharging :request) auto_smart_factory::RegisterAgentChargingRequest)
(setf (get auto_smart_factory::RegisterAgentCharging :response) auto_smart_factory::RegisterAgentChargingResponse)

(defmethod auto_smart_factory::RegisterAgentChargingRequest
  (:response () (instance auto_smart_factory::RegisterAgentChargingResponse :init)))

(setf (get auto_smart_factory::RegisterAgentChargingRequest :md5sum-) "11168f4e7f6e2573e6e16113b1b364fd")
(setf (get auto_smart_factory::RegisterAgentChargingRequest :datatype-) "auto_smart_factory/RegisterAgentChargingRequest")
(setf (get auto_smart_factory::RegisterAgentChargingRequest :definition-)
      "string agent_id
RobotConfiguration robot_configuration
float32 battery_level

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
bool success
")

(setf (get auto_smart_factory::RegisterAgentChargingResponse :md5sum-) "11168f4e7f6e2573e6e16113b1b364fd")
(setf (get auto_smart_factory::RegisterAgentChargingResponse :datatype-) "auto_smart_factory/RegisterAgentChargingResponse")
(setf (get auto_smart_factory::RegisterAgentChargingResponse :definition-)
      "string agent_id
RobotConfiguration robot_configuration
float32 battery_level

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
bool success
")



(provide :auto_smart_factory/RegisterAgentCharging "11168f4e7f6e2573e6e16113b1b364fd")


