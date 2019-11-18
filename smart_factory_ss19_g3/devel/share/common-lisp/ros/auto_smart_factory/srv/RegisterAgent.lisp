; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude RegisterAgent-request.msg.html

(cl:defclass <RegisterAgent-request> (roslisp-msg-protocol:ros-message)
  ((agent_id
    :reader agent_id
    :initarg :agent_id
    :type cl:string
    :initform "")
   (robot_configuration
    :reader robot_configuration
    :initarg :robot_configuration
    :type auto_smart_factory-msg:RobotConfiguration
    :initform (cl:make-instance 'auto_smart_factory-msg:RobotConfiguration)))
)

(cl:defclass RegisterAgent-request (<RegisterAgent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterAgent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterAgent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<RegisterAgent-request> is deprecated: use auto_smart_factory-srv:RegisterAgent-request instead.")))

(cl:ensure-generic-function 'agent_id-val :lambda-list '(m))
(cl:defmethod agent_id-val ((m <RegisterAgent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:agent_id-val is deprecated.  Use auto_smart_factory-srv:agent_id instead.")
  (agent_id m))

(cl:ensure-generic-function 'robot_configuration-val :lambda-list '(m))
(cl:defmethod robot_configuration-val ((m <RegisterAgent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:robot_configuration-val is deprecated.  Use auto_smart_factory-srv:robot_configuration instead.")
  (robot_configuration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterAgent-request>) ostream)
  "Serializes a message object of type '<RegisterAgent-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'agent_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'agent_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_configuration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterAgent-request>) istream)
  "Deserializes a message object of type '<RegisterAgent-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agent_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'agent_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_configuration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterAgent-request>)))
  "Returns string type for a service object of type '<RegisterAgent-request>"
  "auto_smart_factory/RegisterAgentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterAgent-request)))
  "Returns string type for a service object of type 'RegisterAgent-request"
  "auto_smart_factory/RegisterAgentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterAgent-request>)))
  "Returns md5sum for a message object of type '<RegisterAgent-request>"
  "531106ed08f09f28c4a5398e3002a70d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterAgent-request)))
  "Returns md5sum for a message object of type 'RegisterAgent-request"
  "531106ed08f09f28c4a5398e3002a70d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterAgent-request>)))
  "Returns full string definition for message of type '<RegisterAgent-request>"
  (cl:format cl:nil "string agent_id~%RobotConfiguration robot_configuration~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterAgent-request)))
  "Returns full string definition for message of type 'RegisterAgent-request"
  (cl:format cl:nil "string agent_id~%RobotConfiguration robot_configuration~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterAgent-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'agent_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_configuration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterAgent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterAgent-request
    (cl:cons ':agent_id (agent_id msg))
    (cl:cons ':robot_configuration (robot_configuration msg))
))
;//! \htmlinclude RegisterAgent-response.msg.html

(cl:defclass <RegisterAgent-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RegisterAgent-response (<RegisterAgent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterAgent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterAgent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<RegisterAgent-response> is deprecated: use auto_smart_factory-srv:RegisterAgent-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RegisterAgent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterAgent-response>) ostream)
  "Serializes a message object of type '<RegisterAgent-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterAgent-response>) istream)
  "Deserializes a message object of type '<RegisterAgent-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterAgent-response>)))
  "Returns string type for a service object of type '<RegisterAgent-response>"
  "auto_smart_factory/RegisterAgentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterAgent-response)))
  "Returns string type for a service object of type 'RegisterAgent-response"
  "auto_smart_factory/RegisterAgentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterAgent-response>)))
  "Returns md5sum for a message object of type '<RegisterAgent-response>"
  "531106ed08f09f28c4a5398e3002a70d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterAgent-response)))
  "Returns md5sum for a message object of type 'RegisterAgent-response"
  "531106ed08f09f28c4a5398e3002a70d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterAgent-response>)))
  "Returns full string definition for message of type '<RegisterAgent-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterAgent-response)))
  "Returns full string definition for message of type 'RegisterAgent-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterAgent-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterAgent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterAgent-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RegisterAgent)))
  'RegisterAgent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RegisterAgent)))
  'RegisterAgent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterAgent)))
  "Returns string type for a service object of type '<RegisterAgent>"
  "auto_smart_factory/RegisterAgent")