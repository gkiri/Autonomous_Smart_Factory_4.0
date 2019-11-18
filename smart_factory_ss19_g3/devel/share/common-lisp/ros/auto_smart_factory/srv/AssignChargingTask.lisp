; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude AssignChargingTask-request.msg.html

(cl:defclass <AssignChargingTask-request> (roslisp-msg-protocol:ros-message)
  ((tray_id
    :reader tray_id
    :initarg :tray_id
    :type cl:integer
    :initform 0)
   (end
    :reader end
    :initarg :end
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AssignChargingTask-request (<AssignChargingTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignChargingTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignChargingTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<AssignChargingTask-request> is deprecated: use auto_smart_factory-srv:AssignChargingTask-request instead.")))

(cl:ensure-generic-function 'tray_id-val :lambda-list '(m))
(cl:defmethod tray_id-val ((m <AssignChargingTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:tray_id-val is deprecated.  Use auto_smart_factory-srv:tray_id instead.")
  (tray_id m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <AssignChargingTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:end-val is deprecated.  Use auto_smart_factory-srv:end instead.")
  (end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignChargingTask-request>) ostream)
  "Serializes a message object of type '<AssignChargingTask-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'end) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignChargingTask-request>) istream)
  "Deserializes a message object of type '<AssignChargingTask-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tray_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tray_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tray_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tray_id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignChargingTask-request>)))
  "Returns string type for a service object of type '<AssignChargingTask-request>"
  "auto_smart_factory/AssignChargingTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignChargingTask-request)))
  "Returns string type for a service object of type 'AssignChargingTask-request"
  "auto_smart_factory/AssignChargingTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignChargingTask-request>)))
  "Returns md5sum for a message object of type '<AssignChargingTask-request>"
  "dd6c73c96eadb2e66af831949e40763a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignChargingTask-request)))
  "Returns md5sum for a message object of type 'AssignChargingTask-request"
  "dd6c73c96eadb2e66af831949e40763a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignChargingTask-request>)))
  "Returns full string definition for message of type '<AssignChargingTask-request>"
  (cl:format cl:nil "uint32 tray_id~%bool end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignChargingTask-request)))
  "Returns full string definition for message of type 'AssignChargingTask-request"
  (cl:format cl:nil "uint32 tray_id~%bool end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignChargingTask-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignChargingTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignChargingTask-request
    (cl:cons ':tray_id (tray_id msg))
    (cl:cons ':end (end msg))
))
;//! \htmlinclude AssignChargingTask-response.msg.html

(cl:defclass <AssignChargingTask-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AssignChargingTask-response (<AssignChargingTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignChargingTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignChargingTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<AssignChargingTask-response> is deprecated: use auto_smart_factory-srv:AssignChargingTask-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AssignChargingTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignChargingTask-response>) ostream)
  "Serializes a message object of type '<AssignChargingTask-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignChargingTask-response>) istream)
  "Deserializes a message object of type '<AssignChargingTask-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignChargingTask-response>)))
  "Returns string type for a service object of type '<AssignChargingTask-response>"
  "auto_smart_factory/AssignChargingTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignChargingTask-response)))
  "Returns string type for a service object of type 'AssignChargingTask-response"
  "auto_smart_factory/AssignChargingTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignChargingTask-response>)))
  "Returns md5sum for a message object of type '<AssignChargingTask-response>"
  "dd6c73c96eadb2e66af831949e40763a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignChargingTask-response)))
  "Returns md5sum for a message object of type 'AssignChargingTask-response"
  "dd6c73c96eadb2e66af831949e40763a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignChargingTask-response>)))
  "Returns full string definition for message of type '<AssignChargingTask-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignChargingTask-response)))
  "Returns full string definition for message of type 'AssignChargingTask-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignChargingTask-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignChargingTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignChargingTask-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AssignChargingTask)))
  'AssignChargingTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AssignChargingTask)))
  'AssignChargingTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignChargingTask)))
  "Returns string type for a service object of type '<AssignChargingTask>"
  "auto_smart_factory/AssignChargingTask")