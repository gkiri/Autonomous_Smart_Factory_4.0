; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude SetConveyorSpeed-request.msg.html

(cl:defclass <SetConveyorSpeed-request> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetConveyorSpeed-request (<SetConveyorSpeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetConveyorSpeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetConveyorSpeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<SetConveyorSpeed-request> is deprecated: use auto_smart_factory-srv:SetConveyorSpeed-request instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <SetConveyorSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:speed-val is deprecated.  Use auto_smart_factory-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetConveyorSpeed-request>) ostream)
  "Serializes a message object of type '<SetConveyorSpeed-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetConveyorSpeed-request>) istream)
  "Deserializes a message object of type '<SetConveyorSpeed-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetConveyorSpeed-request>)))
  "Returns string type for a service object of type '<SetConveyorSpeed-request>"
  "auto_smart_factory/SetConveyorSpeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetConveyorSpeed-request)))
  "Returns string type for a service object of type 'SetConveyorSpeed-request"
  "auto_smart_factory/SetConveyorSpeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetConveyorSpeed-request>)))
  "Returns md5sum for a message object of type '<SetConveyorSpeed-request>"
  "442a651c7244a8d9b9377aa6512c7fb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetConveyorSpeed-request)))
  "Returns md5sum for a message object of type 'SetConveyorSpeed-request"
  "442a651c7244a8d9b9377aa6512c7fb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetConveyorSpeed-request>)))
  "Returns full string definition for message of type '<SetConveyorSpeed-request>"
  (cl:format cl:nil "~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetConveyorSpeed-request)))
  "Returns full string definition for message of type 'SetConveyorSpeed-request"
  (cl:format cl:nil "~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetConveyorSpeed-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetConveyorSpeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetConveyorSpeed-request
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude SetConveyorSpeed-response.msg.html

(cl:defclass <SetConveyorSpeed-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetConveyorSpeed-response (<SetConveyorSpeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetConveyorSpeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetConveyorSpeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<SetConveyorSpeed-response> is deprecated: use auto_smart_factory-srv:SetConveyorSpeed-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetConveyorSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetConveyorSpeed-response>) ostream)
  "Serializes a message object of type '<SetConveyorSpeed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetConveyorSpeed-response>) istream)
  "Deserializes a message object of type '<SetConveyorSpeed-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetConveyorSpeed-response>)))
  "Returns string type for a service object of type '<SetConveyorSpeed-response>"
  "auto_smart_factory/SetConveyorSpeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetConveyorSpeed-response)))
  "Returns string type for a service object of type 'SetConveyorSpeed-response"
  "auto_smart_factory/SetConveyorSpeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetConveyorSpeed-response>)))
  "Returns md5sum for a message object of type '<SetConveyorSpeed-response>"
  "442a651c7244a8d9b9377aa6512c7fb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetConveyorSpeed-response)))
  "Returns md5sum for a message object of type 'SetConveyorSpeed-response"
  "442a651c7244a8d9b9377aa6512c7fb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetConveyorSpeed-response>)))
  "Returns full string definition for message of type '<SetConveyorSpeed-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetConveyorSpeed-response)))
  "Returns full string definition for message of type 'SetConveyorSpeed-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetConveyorSpeed-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetConveyorSpeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetConveyorSpeed-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetConveyorSpeed)))
  'SetConveyorSpeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetConveyorSpeed)))
  'SetConveyorSpeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetConveyorSpeed)))
  "Returns string type for a service object of type '<SetConveyorSpeed>"
  "auto_smart_factory/SetConveyorSpeed")