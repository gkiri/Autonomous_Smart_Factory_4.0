; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude RotateTable-request.msg.html

(cl:defclass <RotateTable-request> (roslisp-msg-protocol:ros-message)
  ((degrees
    :reader degrees
    :initarg :degrees
    :type cl:integer
    :initform 0))
)

(cl:defclass RotateTable-request (<RotateTable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RotateTable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RotateTable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<RotateTable-request> is deprecated: use auto_smart_factory-srv:RotateTable-request instead.")))

(cl:ensure-generic-function 'degrees-val :lambda-list '(m))
(cl:defmethod degrees-val ((m <RotateTable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:degrees-val is deprecated.  Use auto_smart_factory-srv:degrees instead.")
  (degrees m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RotateTable-request>) ostream)
  "Serializes a message object of type '<RotateTable-request>"
  (cl:let* ((signed (cl:slot-value msg 'degrees)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RotateTable-request>) istream)
  "Deserializes a message object of type '<RotateTable-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'degrees) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RotateTable-request>)))
  "Returns string type for a service object of type '<RotateTable-request>"
  "auto_smart_factory/RotateTableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RotateTable-request)))
  "Returns string type for a service object of type 'RotateTable-request"
  "auto_smart_factory/RotateTableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RotateTable-request>)))
  "Returns md5sum for a message object of type '<RotateTable-request>"
  "f112e8d09c0b0824d371f81aa34bf8fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RotateTable-request)))
  "Returns md5sum for a message object of type 'RotateTable-request"
  "f112e8d09c0b0824d371f81aa34bf8fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RotateTable-request>)))
  "Returns full string definition for message of type '<RotateTable-request>"
  (cl:format cl:nil "~%int32 degrees~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RotateTable-request)))
  "Returns full string definition for message of type 'RotateTable-request"
  (cl:format cl:nil "~%int32 degrees~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RotateTable-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RotateTable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RotateTable-request
    (cl:cons ':degrees (degrees msg))
))
;//! \htmlinclude RotateTable-response.msg.html

(cl:defclass <RotateTable-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RotateTable-response (<RotateTable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RotateTable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RotateTable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<RotateTable-response> is deprecated: use auto_smart_factory-srv:RotateTable-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RotateTable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RotateTable-response>) ostream)
  "Serializes a message object of type '<RotateTable-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RotateTable-response>) istream)
  "Deserializes a message object of type '<RotateTable-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RotateTable-response>)))
  "Returns string type for a service object of type '<RotateTable-response>"
  "auto_smart_factory/RotateTableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RotateTable-response)))
  "Returns string type for a service object of type 'RotateTable-response"
  "auto_smart_factory/RotateTableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RotateTable-response>)))
  "Returns md5sum for a message object of type '<RotateTable-response>"
  "f112e8d09c0b0824d371f81aa34bf8fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RotateTable-response)))
  "Returns md5sum for a message object of type 'RotateTable-response"
  "f112e8d09c0b0824d371f81aa34bf8fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RotateTable-response>)))
  "Returns full string definition for message of type '<RotateTable-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RotateTable-response)))
  "Returns full string definition for message of type 'RotateTable-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RotateTable-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RotateTable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RotateTable-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RotateTable)))
  'RotateTable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RotateTable)))
  'RotateTable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RotateTable)))
  "Returns string type for a service object of type '<RotateTable>"
  "auto_smart_factory/RotateTable")