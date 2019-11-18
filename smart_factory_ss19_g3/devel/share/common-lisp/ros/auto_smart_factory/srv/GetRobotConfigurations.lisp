; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude GetRobotConfigurations-request.msg.html

(cl:defclass <GetRobotConfigurations-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetRobotConfigurations-request (<GetRobotConfigurations-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotConfigurations-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotConfigurations-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetRobotConfigurations-request> is deprecated: use auto_smart_factory-srv:GetRobotConfigurations-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotConfigurations-request>) ostream)
  "Serializes a message object of type '<GetRobotConfigurations-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotConfigurations-request>) istream)
  "Deserializes a message object of type '<GetRobotConfigurations-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotConfigurations-request>)))
  "Returns string type for a service object of type '<GetRobotConfigurations-request>"
  "auto_smart_factory/GetRobotConfigurationsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotConfigurations-request)))
  "Returns string type for a service object of type 'GetRobotConfigurations-request"
  "auto_smart_factory/GetRobotConfigurationsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotConfigurations-request>)))
  "Returns md5sum for a message object of type '<GetRobotConfigurations-request>"
  "4af00ad841eaed229126db0b4270d254")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotConfigurations-request)))
  "Returns md5sum for a message object of type 'GetRobotConfigurations-request"
  "4af00ad841eaed229126db0b4270d254")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotConfigurations-request>)))
  "Returns full string definition for message of type '<GetRobotConfigurations-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotConfigurations-request)))
  "Returns full string definition for message of type 'GetRobotConfigurations-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotConfigurations-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotConfigurations-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotConfigurations-request
))
;//! \htmlinclude GetRobotConfigurations-response.msg.html

(cl:defclass <GetRobotConfigurations-response> (roslisp-msg-protocol:ros-message)
  ((configs
    :reader configs
    :initarg :configs
    :type (cl:vector auto_smart_factory-msg:RobotConfiguration)
   :initform (cl:make-array 0 :element-type 'auto_smart_factory-msg:RobotConfiguration :initial-element (cl:make-instance 'auto_smart_factory-msg:RobotConfiguration))))
)

(cl:defclass GetRobotConfigurations-response (<GetRobotConfigurations-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotConfigurations-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotConfigurations-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetRobotConfigurations-response> is deprecated: use auto_smart_factory-srv:GetRobotConfigurations-response instead.")))

(cl:ensure-generic-function 'configs-val :lambda-list '(m))
(cl:defmethod configs-val ((m <GetRobotConfigurations-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:configs-val is deprecated.  Use auto_smart_factory-srv:configs instead.")
  (configs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotConfigurations-response>) ostream)
  "Serializes a message object of type '<GetRobotConfigurations-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'configs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'configs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotConfigurations-response>) istream)
  "Deserializes a message object of type '<GetRobotConfigurations-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'configs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'configs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auto_smart_factory-msg:RobotConfiguration))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotConfigurations-response>)))
  "Returns string type for a service object of type '<GetRobotConfigurations-response>"
  "auto_smart_factory/GetRobotConfigurationsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotConfigurations-response)))
  "Returns string type for a service object of type 'GetRobotConfigurations-response"
  "auto_smart_factory/GetRobotConfigurationsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotConfigurations-response>)))
  "Returns md5sum for a message object of type '<GetRobotConfigurations-response>"
  "4af00ad841eaed229126db0b4270d254")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotConfigurations-response)))
  "Returns md5sum for a message object of type 'GetRobotConfigurations-response"
  "4af00ad841eaed229126db0b4270d254")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotConfigurations-response>)))
  "Returns full string definition for message of type '<GetRobotConfigurations-response>"
  (cl:format cl:nil "RobotConfiguration[] configs~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotConfigurations-response)))
  "Returns full string definition for message of type 'GetRobotConfigurations-response"
  (cl:format cl:nil "RobotConfiguration[] configs~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotConfigurations-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'configs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotConfigurations-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotConfigurations-response
    (cl:cons ':configs (configs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRobotConfigurations)))
  'GetRobotConfigurations-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRobotConfigurations)))
  'GetRobotConfigurations-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotConfigurations)))
  "Returns string type for a service object of type '<GetRobotConfigurations>"
  "auto_smart_factory/GetRobotConfigurations")