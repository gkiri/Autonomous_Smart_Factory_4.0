; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude NewPackageInput-request.msg.html

(cl:defclass <NewPackageInput-request> (roslisp-msg-protocol:ros-message)
  ((input_tray_id
    :reader input_tray_id
    :initarg :input_tray_id
    :type cl:integer
    :initform 0)
   (package
    :reader package
    :initarg :package
    :type auto_smart_factory-msg:Package
    :initform (cl:make-instance 'auto_smart_factory-msg:Package)))
)

(cl:defclass NewPackageInput-request (<NewPackageInput-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewPackageInput-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewPackageInput-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<NewPackageInput-request> is deprecated: use auto_smart_factory-srv:NewPackageInput-request instead.")))

(cl:ensure-generic-function 'input_tray_id-val :lambda-list '(m))
(cl:defmethod input_tray_id-val ((m <NewPackageInput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:input_tray_id-val is deprecated.  Use auto_smart_factory-srv:input_tray_id instead.")
  (input_tray_id m))

(cl:ensure-generic-function 'package-val :lambda-list '(m))
(cl:defmethod package-val ((m <NewPackageInput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:package-val is deprecated.  Use auto_smart_factory-srv:package instead.")
  (package m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewPackageInput-request>) ostream)
  "Serializes a message object of type '<NewPackageInput-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'input_tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'input_tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'input_tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'input_tray_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'package) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewPackageInput-request>) istream)
  "Deserializes a message object of type '<NewPackageInput-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'input_tray_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'input_tray_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'input_tray_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'input_tray_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'package) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewPackageInput-request>)))
  "Returns string type for a service object of type '<NewPackageInput-request>"
  "auto_smart_factory/NewPackageInputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewPackageInput-request)))
  "Returns string type for a service object of type 'NewPackageInput-request"
  "auto_smart_factory/NewPackageInputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewPackageInput-request>)))
  "Returns md5sum for a message object of type '<NewPackageInput-request>"
  "cb8fa262c2f7b69df6eabe55ec8b9e33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewPackageInput-request)))
  "Returns md5sum for a message object of type 'NewPackageInput-request"
  "cb8fa262c2f7b69df6eabe55ec8b9e33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewPackageInput-request>)))
  "Returns full string definition for message of type '<NewPackageInput-request>"
  (cl:format cl:nil "~%uint32 input_tray_id~%~%~%Package package~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewPackageInput-request)))
  "Returns full string definition for message of type 'NewPackageInput-request"
  (cl:format cl:nil "~%uint32 input_tray_id~%~%~%Package package~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewPackageInput-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'package))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewPackageInput-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NewPackageInput-request
    (cl:cons ':input_tray_id (input_tray_id msg))
    (cl:cons ':package (package msg))
))
;//! \htmlinclude NewPackageInput-response.msg.html

(cl:defclass <NewPackageInput-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NewPackageInput-response (<NewPackageInput-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewPackageInput-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewPackageInput-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<NewPackageInput-response> is deprecated: use auto_smart_factory-srv:NewPackageInput-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <NewPackageInput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewPackageInput-response>) ostream)
  "Serializes a message object of type '<NewPackageInput-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewPackageInput-response>) istream)
  "Deserializes a message object of type '<NewPackageInput-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewPackageInput-response>)))
  "Returns string type for a service object of type '<NewPackageInput-response>"
  "auto_smart_factory/NewPackageInputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewPackageInput-response)))
  "Returns string type for a service object of type 'NewPackageInput-response"
  "auto_smart_factory/NewPackageInputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewPackageInput-response>)))
  "Returns md5sum for a message object of type '<NewPackageInput-response>"
  "cb8fa262c2f7b69df6eabe55ec8b9e33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewPackageInput-response)))
  "Returns md5sum for a message object of type 'NewPackageInput-response"
  "cb8fa262c2f7b69df6eabe55ec8b9e33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewPackageInput-response>)))
  "Returns full string definition for message of type '<NewPackageInput-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewPackageInput-response)))
  "Returns full string definition for message of type 'NewPackageInput-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewPackageInput-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewPackageInput-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NewPackageInput-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NewPackageInput)))
  'NewPackageInput-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NewPackageInput)))
  'NewPackageInput-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewPackageInput)))
  "Returns string type for a service object of type '<NewPackageInput>"
  "auto_smart_factory/NewPackageInput")