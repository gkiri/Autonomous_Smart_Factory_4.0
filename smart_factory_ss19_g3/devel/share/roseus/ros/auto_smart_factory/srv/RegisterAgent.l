;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::RegisterAgent)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'RegisterAgent (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::REGISTERAGENT")
  (make-package "AUTO_SMART_FACTORY::REGISTERAGENT"))
(unless (find-package "AUTO_SMART_FACTORY::REGISTERAGENTREQUEST")
  (make-package "AUTO_SMART_FACTORY::REGISTERAGENTREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::REGISTERAGENTRESPONSE")
  (make-package "AUTO_SMART_FACTORY::REGISTERAGENTRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::RegisterAgentRequest
  :super ros::object
  :slots (_agent_id _robot_configuration ))

(defmethod auto_smart_factory::RegisterAgentRequest
  (:init
   (&key
    ((:agent_id __agent_id) "")
    ((:robot_configuration __robot_configuration) (instance auto_smart_factory::RobotConfiguration :init))
    )
   (send-super :init)
   (setq _agent_id (string __agent_id))
   (setq _robot_configuration __robot_configuration)
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
  (:serialization-length
   ()
   (+
    ;; string _agent_id
    4 (length _agent_id)
    ;; auto_smart_factory/RobotConfiguration _robot_configuration
    (send _robot_configuration :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _agent_id
       (write-long (length _agent_id) s) (princ _agent_id s)
     ;; auto_smart_factory/RobotConfiguration _robot_configuration
       (send _robot_configuration :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _agent_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _agent_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; auto_smart_factory/RobotConfiguration _robot_configuration
     (send _robot_configuration :deserialize buf ptr-) (incf ptr- (send _robot_configuration :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::RegisterAgentResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::RegisterAgentResponse
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

(defclass auto_smart_factory::RegisterAgent
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::RegisterAgent :md5sum-) "531106ed08f09f28c4a5398e3002a70d")
(setf (get auto_smart_factory::RegisterAgent :datatype-) "auto_smart_factory/RegisterAgent")
(setf (get auto_smart_factory::RegisterAgent :request) auto_smart_factory::RegisterAgentRequest)
(setf (get auto_smart_factory::RegisterAgent :response) auto_smart_factory::RegisterAgentResponse)

(defmethod auto_smart_factory::RegisterAgentRequest
  (:response () (instance auto_smart_factory::RegisterAgentResponse :init)))

(setf (get auto_smart_factory::RegisterAgentRequest :md5sum-) "531106ed08f09f28c4a5398e3002a70d")
(setf (get auto_smart_factory::RegisterAgentRequest :datatype-) "auto_smart_factory/RegisterAgentRequest")
(setf (get auto_smart_factory::RegisterAgentRequest :definition-)
      "string agent_id
RobotConfiguration robot_configuration

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

(setf (get auto_smart_factory::RegisterAgentResponse :md5sum-) "531106ed08f09f28c4a5398e3002a70d")
(setf (get auto_smart_factory::RegisterAgentResponse :datatype-) "auto_smart_factory/RegisterAgentResponse")
(setf (get auto_smart_factory::RegisterAgentResponse :definition-)
      "string agent_id
RobotConfiguration robot_configuration

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



(provide :auto_smart_factory/RegisterAgent "531106ed08f09f28c4a5398e3002a70d")


