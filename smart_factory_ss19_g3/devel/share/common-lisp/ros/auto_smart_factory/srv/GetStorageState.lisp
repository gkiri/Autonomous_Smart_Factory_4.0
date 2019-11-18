; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude GetStorageState-request.msg.html

(cl:defclass <GetStorageState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetStorageState-request (<GetStorageState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStorageState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStorageState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetStorageState-request> is deprecated: use auto_smart_factory-srv:GetStorageState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStorageState-request>) ostream)
  "Serializes a message object of type '<GetStorageState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStorageState-request>) istream)
  "Deserializes a message object of type '<GetStorageState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStorageState-request>)))
  "Returns string type for a service object of type '<GetStorageState-request>"
  "auto_smart_factory/GetStorageStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStorageState-request)))
  "Returns string type for a service object of type 'GetStorageState-request"
  "auto_smart_factory/GetStorageStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStorageState-request>)))
  "Returns md5sum for a message object of type '<GetStorageState-request>"
  "8daf70e0db11146ef116dfad6f35d7dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStorageState-request)))
  "Returns md5sum for a message object of type 'GetStorageState-request"
  "8daf70e0db11146ef116dfad6f35d7dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStorageState-request>)))
  "Returns full string definition for message of type '<GetStorageState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStorageState-request)))
  "Returns full string definition for message of type 'GetStorageState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStorageState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStorageState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStorageState-request
))
;//! \htmlinclude GetStorageState-response.msg.html

(cl:defclass <GetStorageState-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type auto_smart_factory-msg:StorageState
    :initform (cl:make-instance 'auto_smart_factory-msg:StorageState)))
)

(cl:defclass GetStorageState-response (<GetStorageState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStorageState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStorageState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetStorageState-response> is deprecated: use auto_smart_factory-srv:GetStorageState-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetStorageState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:state-val is deprecated.  Use auto_smart_factory-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStorageState-response>) ostream)
  "Serializes a message object of type '<GetStorageState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStorageState-response>) istream)
  "Deserializes a message object of type '<GetStorageState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStorageState-response>)))
  "Returns string type for a service object of type '<GetStorageState-response>"
  "auto_smart_factory/GetStorageStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStorageState-response)))
  "Returns string type for a service object of type 'GetStorageState-response"
  "auto_smart_factory/GetStorageStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStorageState-response>)))
  "Returns md5sum for a message object of type '<GetStorageState-response>"
  "8daf70e0db11146ef116dfad6f35d7dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStorageState-response)))
  "Returns md5sum for a message object of type 'GetStorageState-response"
  "8daf70e0db11146ef116dfad6f35d7dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStorageState-response>)))
  "Returns full string definition for message of type '<GetStorageState-response>"
  (cl:format cl:nil "StorageState state~%~%~%================================================================================~%MSG: auto_smart_factory/StorageState~%# timestamp of the state~%time stamp~%~%# States of the instances of the three tray types~%TrayState[] tray_states~%~%================================================================================~%MSG: auto_smart_factory/TrayState~%# the unique tray ID~%uint32 id~%~%# Indicates whether the tray is occupied or not.~%bool occupied~%~%# Availability of the tray. If false the the tray is allocated by a task.~%bool available~%~%# information about the package stored in this tray (only valid if state != free)~%Package package~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStorageState-response)))
  "Returns full string definition for message of type 'GetStorageState-response"
  (cl:format cl:nil "StorageState state~%~%~%================================================================================~%MSG: auto_smart_factory/StorageState~%# timestamp of the state~%time stamp~%~%# States of the instances of the three tray types~%TrayState[] tray_states~%~%================================================================================~%MSG: auto_smart_factory/TrayState~%# the unique tray ID~%uint32 id~%~%# Indicates whether the tray is occupied or not.~%bool occupied~%~%# Availability of the tray. If false the the tray is allocated by a task.~%bool available~%~%# information about the package stored in this tray (only valid if state != free)~%Package package~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStorageState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStorageState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStorageState-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetStorageState)))
  'GetStorageState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetStorageState)))
  'GetStorageState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStorageState)))
  "Returns string type for a service object of type '<GetStorageState>"
  "auto_smart_factory/GetStorageState")