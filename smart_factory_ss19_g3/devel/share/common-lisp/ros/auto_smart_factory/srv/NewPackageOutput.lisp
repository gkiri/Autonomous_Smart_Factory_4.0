; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude NewPackageOutput-request.msg.html

(cl:defclass <NewPackageOutput-request> (roslisp-msg-protocol:ros-message)
  ((output_tray_id
    :reader output_tray_id
    :initarg :output_tray_id
    :type cl:integer
    :initform 0)
   (package
    :reader package
    :initarg :package
    :type auto_smart_factory-msg:Package
    :initform (cl:make-instance 'auto_smart_factory-msg:Package)))
)

(cl:defclass NewPackageOutput-request (<NewPackageOutput-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewPackageOutput-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewPackageOutput-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<NewPackageOutput-request> is deprecated: use auto_smart_factory-srv:NewPackageOutput-request instead.")))

(cl:ensure-generic-function 'output_tray_id-val :lambda-list '(m))
(cl:defmethod output_tray_id-val ((m <NewPackageOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:output_tray_id-val is deprecated.  Use auto_smart_factory-srv:output_tray_id instead.")
  (output_tray_id m))

(cl:ensure-generic-function 'package-val :lambda-list '(m))
(cl:defmethod package-val ((m <NewPackageOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:package-val is deprecated.  Use auto_smart_factory-srv:package instead.")
  (package m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewPackageOutput-request>) ostream)
  "Serializes a message object of type '<NewPackageOutput-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output_tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'output_tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'output_tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'output_tray_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'package) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewPackageOutput-request>) istream)
  "Deserializes a message object of type '<NewPackageOutput-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output_tray_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'output_tray_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'output_tray_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'output_tray_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'package) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewPackageOutput-request>)))
  "Returns string type for a service object of type '<NewPackageOutput-request>"
  "auto_smart_factory/NewPackageOutputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewPackageOutput-request)))
  "Returns string type for a service object of type 'NewPackageOutput-request"
  "auto_smart_factory/NewPackageOutputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewPackageOutput-request>)))
  "Returns md5sum for a message object of type '<NewPackageOutput-request>"
  "098e14107067978df5c59d83e2abbe5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewPackageOutput-request)))
  "Returns md5sum for a message object of type 'NewPackageOutput-request"
  "098e14107067978df5c59d83e2abbe5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewPackageOutput-request>)))
  "Returns full string definition for message of type '<NewPackageOutput-request>"
  (cl:format cl:nil "~%uint32 output_tray_id~%~%~%Package package~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewPackageOutput-request)))
  "Returns full string definition for message of type 'NewPackageOutput-request"
  (cl:format cl:nil "~%uint32 output_tray_id~%~%~%Package package~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewPackageOutput-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'package))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewPackageOutput-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NewPackageOutput-request
    (cl:cons ':output_tray_id (output_tray_id msg))
    (cl:cons ':package (package msg))
))
;//! \htmlinclude NewPackageOutput-response.msg.html

(cl:defclass <NewPackageOutput-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NewPackageOutput-response (<NewPackageOutput-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewPackageOutput-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewPackageOutput-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<NewPackageOutput-response> is deprecated: use auto_smart_factory-srv:NewPackageOutput-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <NewPackageOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewPackageOutput-response>) ostream)
  "Serializes a message object of type '<NewPackageOutput-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewPackageOutput-response>) istream)
  "Deserializes a message object of type '<NewPackageOutput-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewPackageOutput-response>)))
  "Returns string type for a service object of type '<NewPackageOutput-response>"
  "auto_smart_factory/NewPackageOutputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewPackageOutput-response)))
  "Returns string type for a service object of type 'NewPackageOutput-response"
  "auto_smart_factory/NewPackageOutputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewPackageOutput-response>)))
  "Returns md5sum for a message object of type '<NewPackageOutput-response>"
  "098e14107067978df5c59d83e2abbe5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewPackageOutput-response)))
  "Returns md5sum for a message object of type 'NewPackageOutput-response"
  "098e14107067978df5c59d83e2abbe5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewPackageOutput-response>)))
  "Returns full string definition for message of type '<NewPackageOutput-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewPackageOutput-response)))
  "Returns full string definition for message of type 'NewPackageOutput-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewPackageOutput-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewPackageOutput-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NewPackageOutput-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NewPackageOutput)))
  'NewPackageOutput-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NewPackageOutput)))
  'NewPackageOutput-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewPackageOutput)))
  "Returns string type for a service object of type '<NewPackageOutput>"
  "auto_smart_factory/NewPackageOutput")