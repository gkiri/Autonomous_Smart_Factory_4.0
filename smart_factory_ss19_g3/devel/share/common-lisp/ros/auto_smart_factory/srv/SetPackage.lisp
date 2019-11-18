; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude SetPackage-request.msg.html

(cl:defclass <SetPackage-request> (roslisp-msg-protocol:ros-message)
  ((trayId
    :reader trayId
    :initarg :trayId
    :type cl:integer
    :initform 0)
   (pkg
    :reader pkg
    :initarg :pkg
    :type auto_smart_factory-msg:Package
    :initform (cl:make-instance 'auto_smart_factory-msg:Package)))
)

(cl:defclass SetPackage-request (<SetPackage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPackage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPackage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<SetPackage-request> is deprecated: use auto_smart_factory-srv:SetPackage-request instead.")))

(cl:ensure-generic-function 'trayId-val :lambda-list '(m))
(cl:defmethod trayId-val ((m <SetPackage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:trayId-val is deprecated.  Use auto_smart_factory-srv:trayId instead.")
  (trayId m))

(cl:ensure-generic-function 'pkg-val :lambda-list '(m))
(cl:defmethod pkg-val ((m <SetPackage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:pkg-val is deprecated.  Use auto_smart_factory-srv:pkg instead.")
  (pkg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPackage-request>) ostream)
  "Serializes a message object of type '<SetPackage-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trayId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trayId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trayId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trayId)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pkg) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPackage-request>) istream)
  "Deserializes a message object of type '<SetPackage-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trayId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trayId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trayId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trayId)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pkg) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPackage-request>)))
  "Returns string type for a service object of type '<SetPackage-request>"
  "auto_smart_factory/SetPackageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPackage-request)))
  "Returns string type for a service object of type 'SetPackage-request"
  "auto_smart_factory/SetPackageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPackage-request>)))
  "Returns md5sum for a message object of type '<SetPackage-request>"
  "2bf9725e18218d881c4e6def49493469")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPackage-request)))
  "Returns md5sum for a message object of type 'SetPackage-request"
  "2bf9725e18218d881c4e6def49493469")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPackage-request>)))
  "Returns full string definition for message of type '<SetPackage-request>"
  (cl:format cl:nil "uint32 trayId~%Package pkg~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPackage-request)))
  "Returns full string definition for message of type 'SetPackage-request"
  (cl:format cl:nil "uint32 trayId~%Package pkg~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPackage-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pkg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPackage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPackage-request
    (cl:cons ':trayId (trayId msg))
    (cl:cons ':pkg (pkg msg))
))
;//! \htmlinclude SetPackage-response.msg.html

(cl:defclass <SetPackage-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetPackage-response (<SetPackage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPackage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPackage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<SetPackage-response> is deprecated: use auto_smart_factory-srv:SetPackage-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPackage-response>) ostream)
  "Serializes a message object of type '<SetPackage-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPackage-response>) istream)
  "Deserializes a message object of type '<SetPackage-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPackage-response>)))
  "Returns string type for a service object of type '<SetPackage-response>"
  "auto_smart_factory/SetPackageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPackage-response)))
  "Returns string type for a service object of type 'SetPackage-response"
  "auto_smart_factory/SetPackageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPackage-response>)))
  "Returns md5sum for a message object of type '<SetPackage-response>"
  "2bf9725e18218d881c4e6def49493469")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPackage-response)))
  "Returns md5sum for a message object of type 'SetPackage-response"
  "2bf9725e18218d881c4e6def49493469")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPackage-response>)))
  "Returns full string definition for message of type '<SetPackage-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPackage-response)))
  "Returns full string definition for message of type 'SetPackage-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPackage-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPackage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPackage-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPackage)))
  'SetPackage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPackage)))
  'SetPackage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPackage)))
  "Returns string type for a service object of type '<SetPackage>"
  "auto_smart_factory/SetPackage")