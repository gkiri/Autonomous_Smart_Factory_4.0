; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude GetTrayState-request.msg.html

(cl:defclass <GetTrayState-request> (roslisp-msg-protocol:ros-message)
  ((trayId
    :reader trayId
    :initarg :trayId
    :type cl:integer
    :initform 0))
)

(cl:defclass GetTrayState-request (<GetTrayState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTrayState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTrayState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetTrayState-request> is deprecated: use auto_smart_factory-srv:GetTrayState-request instead.")))

(cl:ensure-generic-function 'trayId-val :lambda-list '(m))
(cl:defmethod trayId-val ((m <GetTrayState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:trayId-val is deprecated.  Use auto_smart_factory-srv:trayId instead.")
  (trayId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTrayState-request>) ostream)
  "Serializes a message object of type '<GetTrayState-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trayId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trayId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trayId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trayId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTrayState-request>) istream)
  "Deserializes a message object of type '<GetTrayState-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trayId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trayId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trayId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trayId)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTrayState-request>)))
  "Returns string type for a service object of type '<GetTrayState-request>"
  "auto_smart_factory/GetTrayStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTrayState-request)))
  "Returns string type for a service object of type 'GetTrayState-request"
  "auto_smart_factory/GetTrayStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTrayState-request>)))
  "Returns md5sum for a message object of type '<GetTrayState-request>"
  "9b8e34a8997f8c20f3dac59f7997bfaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTrayState-request)))
  "Returns md5sum for a message object of type 'GetTrayState-request"
  "9b8e34a8997f8c20f3dac59f7997bfaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTrayState-request>)))
  "Returns full string definition for message of type '<GetTrayState-request>"
  (cl:format cl:nil "uint32 trayId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTrayState-request)))
  "Returns full string definition for message of type 'GetTrayState-request"
  (cl:format cl:nil "uint32 trayId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTrayState-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTrayState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTrayState-request
    (cl:cons ':trayId (trayId msg))
))
;//! \htmlinclude GetTrayState-response.msg.html

(cl:defclass <GetTrayState-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type auto_smart_factory-msg:TrayState
    :initform (cl:make-instance 'auto_smart_factory-msg:TrayState)))
)

(cl:defclass GetTrayState-response (<GetTrayState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTrayState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTrayState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetTrayState-response> is deprecated: use auto_smart_factory-srv:GetTrayState-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetTrayState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:state-val is deprecated.  Use auto_smart_factory-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTrayState-response>) ostream)
  "Serializes a message object of type '<GetTrayState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTrayState-response>) istream)
  "Deserializes a message object of type '<GetTrayState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTrayState-response>)))
  "Returns string type for a service object of type '<GetTrayState-response>"
  "auto_smart_factory/GetTrayStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTrayState-response)))
  "Returns string type for a service object of type 'GetTrayState-response"
  "auto_smart_factory/GetTrayStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTrayState-response>)))
  "Returns md5sum for a message object of type '<GetTrayState-response>"
  "9b8e34a8997f8c20f3dac59f7997bfaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTrayState-response)))
  "Returns md5sum for a message object of type 'GetTrayState-response"
  "9b8e34a8997f8c20f3dac59f7997bfaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTrayState-response>)))
  "Returns full string definition for message of type '<GetTrayState-response>"
  (cl:format cl:nil "TrayState state~%~%~%~%================================================================================~%MSG: auto_smart_factory/TrayState~%# the unique tray ID~%uint32 id~%~%# Indicates whether the tray is occupied or not.~%bool occupied~%~%# Availability of the tray. If false the the tray is allocated by a task.~%bool available~%~%# information about the package stored in this tray (only valid if state != free)~%Package package~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTrayState-response)))
  "Returns full string definition for message of type 'GetTrayState-response"
  (cl:format cl:nil "TrayState state~%~%~%~%================================================================================~%MSG: auto_smart_factory/TrayState~%# the unique tray ID~%uint32 id~%~%# Indicates whether the tray is occupied or not.~%bool occupied~%~%# Availability of the tray. If false the the tray is allocated by a task.~%bool available~%~%# information about the package stored in this tray (only valid if state != free)~%Package package~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTrayState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTrayState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTrayState-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTrayState)))
  'GetTrayState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTrayState)))
  'GetTrayState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTrayState)))
  "Returns string type for a service object of type '<GetTrayState>"
  "auto_smart_factory/GetTrayState")