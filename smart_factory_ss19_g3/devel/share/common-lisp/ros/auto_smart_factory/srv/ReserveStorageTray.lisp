; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude ReserveStorageTray-request.msg.html

(cl:defclass <ReserveStorageTray-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass ReserveStorageTray-request (<ReserveStorageTray-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReserveStorageTray-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReserveStorageTray-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<ReserveStorageTray-request> is deprecated: use auto_smart_factory-srv:ReserveStorageTray-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ReserveStorageTray-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:id-val is deprecated.  Use auto_smart_factory-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReserveStorageTray-request>) ostream)
  "Serializes a message object of type '<ReserveStorageTray-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReserveStorageTray-request>) istream)
  "Deserializes a message object of type '<ReserveStorageTray-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReserveStorageTray-request>)))
  "Returns string type for a service object of type '<ReserveStorageTray-request>"
  "auto_smart_factory/ReserveStorageTrayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReserveStorageTray-request)))
  "Returns string type for a service object of type 'ReserveStorageTray-request"
  "auto_smart_factory/ReserveStorageTrayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReserveStorageTray-request>)))
  "Returns md5sum for a message object of type '<ReserveStorageTray-request>"
  "cff94141438e379e473614d183c5f213")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReserveStorageTray-request)))
  "Returns md5sum for a message object of type 'ReserveStorageTray-request"
  "cff94141438e379e473614d183c5f213")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReserveStorageTray-request>)))
  "Returns full string definition for message of type '<ReserveStorageTray-request>"
  (cl:format cl:nil "~%uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReserveStorageTray-request)))
  "Returns full string definition for message of type 'ReserveStorageTray-request"
  (cl:format cl:nil "~%uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReserveStorageTray-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReserveStorageTray-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReserveStorageTray-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude ReserveStorageTray-response.msg.html

(cl:defclass <ReserveStorageTray-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ReserveStorageTray-response (<ReserveStorageTray-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReserveStorageTray-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReserveStorageTray-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<ReserveStorageTray-response> is deprecated: use auto_smart_factory-srv:ReserveStorageTray-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ReserveStorageTray-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReserveStorageTray-response>) ostream)
  "Serializes a message object of type '<ReserveStorageTray-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReserveStorageTray-response>) istream)
  "Deserializes a message object of type '<ReserveStorageTray-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReserveStorageTray-response>)))
  "Returns string type for a service object of type '<ReserveStorageTray-response>"
  "auto_smart_factory/ReserveStorageTrayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReserveStorageTray-response)))
  "Returns string type for a service object of type 'ReserveStorageTray-response"
  "auto_smart_factory/ReserveStorageTrayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReserveStorageTray-response>)))
  "Returns md5sum for a message object of type '<ReserveStorageTray-response>"
  "cff94141438e379e473614d183c5f213")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReserveStorageTray-response)))
  "Returns md5sum for a message object of type 'ReserveStorageTray-response"
  "cff94141438e379e473614d183c5f213")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReserveStorageTray-response>)))
  "Returns full string definition for message of type '<ReserveStorageTray-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReserveStorageTray-response)))
  "Returns full string definition for message of type 'ReserveStorageTray-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReserveStorageTray-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReserveStorageTray-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReserveStorageTray-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReserveStorageTray)))
  'ReserveStorageTray-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReserveStorageTray)))
  'ReserveStorageTray-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReserveStorageTray)))
  "Returns string type for a service object of type '<ReserveStorageTray>"
  "auto_smart_factory/ReserveStorageTray")