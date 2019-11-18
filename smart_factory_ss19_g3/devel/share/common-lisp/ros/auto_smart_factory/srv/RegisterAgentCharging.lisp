; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude RegisterAgentCharging-request.msg.html

(cl:defclass <RegisterAgentCharging-request> (roslisp-msg-protocol:ros-message)
  ((agent_id
    :reader agent_id
    :initarg :agent_id
    :type cl:string
    :initform "")
   (robot_configuration
    :reader robot_configuration
    :initarg :robot_configuration
    :type auto_smart_factory-msg:RobotConfiguration
    :initform (cl:make-instance 'auto_smart_factory-msg:RobotConfiguration))
   (battery_level
    :reader battery_level
    :initarg :battery_level
    :type cl:float
    :initform 0.0))
)

(cl:defclass RegisterAgentCharging-request (<RegisterAgentCharging-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterAgentCharging-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterAgentCharging-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<RegisterAgentCharging-request> is deprecated: use auto_smart_factory-srv:RegisterAgentCharging-request instead.")))

(cl:ensure-generic-function 'agent_id-val :lambda-list '(m))
(cl:defmethod agent_id-val ((m <RegisterAgentCharging-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:agent_id-val is deprecated.  Use auto_smart_factory-srv:agent_id instead.")
  (agent_id m))

(cl:ensure-generic-function 'robot_configuration-val :lambda-list '(m))
(cl:defmethod robot_configuration-val ((m <RegisterAgentCharging-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:robot_configuration-val is deprecated.  Use auto_smart_factory-srv:robot_configuration instead.")
  (robot_configuration m))

(cl:ensure-generic-function 'battery_level-val :lambda-list '(m))
(cl:defmethod battery_level-val ((m <RegisterAgentCharging-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:battery_level-val is deprecated.  Use auto_smart_factory-srv:battery_level instead.")
  (battery_level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterAgentCharging-request>) ostream)
  "Serializes a message object of type '<RegisterAgentCharging-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'agent_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'agent_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_configuration) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterAgentCharging-request>) istream)
  "Deserializes a message object of type '<RegisterAgentCharging-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agent_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'agent_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_configuration) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_level) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterAgentCharging-request>)))
  "Returns string type for a service object of type '<RegisterAgentCharging-request>"
  "auto_smart_factory/RegisterAgentChargingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterAgentCharging-request)))
  "Returns string type for a service object of type 'RegisterAgentCharging-request"
  "auto_smart_factory/RegisterAgentChargingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterAgentCharging-request>)))
  "Returns md5sum for a message object of type '<RegisterAgentCharging-request>"
  "11168f4e7f6e2573e6e16113b1b364fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterAgentCharging-request)))
  "Returns md5sum for a message object of type 'RegisterAgentCharging-request"
  "11168f4e7f6e2573e6e16113b1b364fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterAgentCharging-request>)))
  "Returns full string definition for message of type '<RegisterAgentCharging-request>"
  (cl:format cl:nil "string agent_id~%RobotConfiguration robot_configuration~%float32 battery_level~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterAgentCharging-request)))
  "Returns full string definition for message of type 'RegisterAgentCharging-request"
  (cl:format cl:nil "string agent_id~%RobotConfiguration robot_configuration~%float32 battery_level~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterAgentCharging-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'agent_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_configuration))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterAgentCharging-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterAgentCharging-request
    (cl:cons ':agent_id (agent_id msg))
    (cl:cons ':robot_configuration (robot_configuration msg))
    (cl:cons ':battery_level (battery_level msg))
))
;//! \htmlinclude RegisterAgentCharging-response.msg.html

(cl:defclass <RegisterAgentCharging-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RegisterAgentCharging-response (<RegisterAgentCharging-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterAgentCharging-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterAgentCharging-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<RegisterAgentCharging-response> is deprecated: use auto_smart_factory-srv:RegisterAgentCharging-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RegisterAgentCharging-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterAgentCharging-response>) ostream)
  "Serializes a message object of type '<RegisterAgentCharging-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterAgentCharging-response>) istream)
  "Deserializes a message object of type '<RegisterAgentCharging-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterAgentCharging-response>)))
  "Returns string type for a service object of type '<RegisterAgentCharging-response>"
  "auto_smart_factory/RegisterAgentChargingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterAgentCharging-response)))
  "Returns string type for a service object of type 'RegisterAgentCharging-response"
  "auto_smart_factory/RegisterAgentChargingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterAgentCharging-response>)))
  "Returns md5sum for a message object of type '<RegisterAgentCharging-response>"
  "11168f4e7f6e2573e6e16113b1b364fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterAgentCharging-response)))
  "Returns md5sum for a message object of type 'RegisterAgentCharging-response"
  "11168f4e7f6e2573e6e16113b1b364fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterAgentCharging-response>)))
  "Returns full string definition for message of type '<RegisterAgentCharging-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterAgentCharging-response)))
  "Returns full string definition for message of type 'RegisterAgentCharging-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterAgentCharging-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterAgentCharging-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterAgentCharging-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RegisterAgentCharging)))
  'RegisterAgentCharging-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RegisterAgentCharging)))
  'RegisterAgentCharging-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterAgentCharging)))
  "Returns string type for a service object of type '<RegisterAgentCharging>"
  "auto_smart_factory/RegisterAgentCharging")