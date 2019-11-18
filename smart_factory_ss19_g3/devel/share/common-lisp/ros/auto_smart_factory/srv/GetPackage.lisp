; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude GetPackage-request.msg.html

(cl:defclass <GetPackage-request> (roslisp-msg-protocol:ros-message)
  ((trayId
    :reader trayId
    :initarg :trayId
    :type cl:integer
    :initform 0))
)

(cl:defclass GetPackage-request (<GetPackage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPackage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPackage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetPackage-request> is deprecated: use auto_smart_factory-srv:GetPackage-request instead.")))

(cl:ensure-generic-function 'trayId-val :lambda-list '(m))
(cl:defmethod trayId-val ((m <GetPackage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:trayId-val is deprecated.  Use auto_smart_factory-srv:trayId instead.")
  (trayId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPackage-request>) ostream)
  "Serializes a message object of type '<GetPackage-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trayId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trayId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trayId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trayId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPackage-request>) istream)
  "Deserializes a message object of type '<GetPackage-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trayId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trayId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trayId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trayId)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPackage-request>)))
  "Returns string type for a service object of type '<GetPackage-request>"
  "auto_smart_factory/GetPackageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPackage-request)))
  "Returns string type for a service object of type 'GetPackage-request"
  "auto_smart_factory/GetPackageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPackage-request>)))
  "Returns md5sum for a message object of type '<GetPackage-request>"
  "a9957da21dd82923674226f14b0e4338")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPackage-request)))
  "Returns md5sum for a message object of type 'GetPackage-request"
  "a9957da21dd82923674226f14b0e4338")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPackage-request>)))
  "Returns full string definition for message of type '<GetPackage-request>"
  (cl:format cl:nil "uint32 trayId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPackage-request)))
  "Returns full string definition for message of type 'GetPackage-request"
  (cl:format cl:nil "uint32 trayId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPackage-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPackage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPackage-request
    (cl:cons ':trayId (trayId msg))
))
;//! \htmlinclude GetPackage-response.msg.html

(cl:defclass <GetPackage-response> (roslisp-msg-protocol:ros-message)
  ((pkg
    :reader pkg
    :initarg :pkg
    :type auto_smart_factory-msg:Package
    :initform (cl:make-instance 'auto_smart_factory-msg:Package)))
)

(cl:defclass GetPackage-response (<GetPackage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPackage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPackage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetPackage-response> is deprecated: use auto_smart_factory-srv:GetPackage-response instead.")))

(cl:ensure-generic-function 'pkg-val :lambda-list '(m))
(cl:defmethod pkg-val ((m <GetPackage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:pkg-val is deprecated.  Use auto_smart_factory-srv:pkg instead.")
  (pkg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPackage-response>) ostream)
  "Serializes a message object of type '<GetPackage-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pkg) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPackage-response>) istream)
  "Deserializes a message object of type '<GetPackage-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pkg) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPackage-response>)))
  "Returns string type for a service object of type '<GetPackage-response>"
  "auto_smart_factory/GetPackageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPackage-response)))
  "Returns string type for a service object of type 'GetPackage-response"
  "auto_smart_factory/GetPackageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPackage-response>)))
  "Returns md5sum for a message object of type '<GetPackage-response>"
  "a9957da21dd82923674226f14b0e4338")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPackage-response)))
  "Returns md5sum for a message object of type 'GetPackage-response"
  "a9957da21dd82923674226f14b0e4338")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPackage-response>)))
  "Returns full string definition for message of type '<GetPackage-response>"
  (cl:format cl:nil "Package pkg~%~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPackage-response)))
  "Returns full string definition for message of type 'GetPackage-response"
  (cl:format cl:nil "Package pkg~%~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPackage-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pkg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPackage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPackage-response
    (cl:cons ':pkg (pkg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPackage)))
  'GetPackage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPackage)))
  'GetPackage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPackage)))
  "Returns string type for a service object of type '<GetPackage>"
  "auto_smart_factory/GetPackage")