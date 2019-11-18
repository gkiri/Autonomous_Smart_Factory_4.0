; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude TrayState.msg.html

(cl:defclass <TrayState> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (occupied
    :reader occupied
    :initarg :occupied
    :type cl:boolean
    :initform cl:nil)
   (available
    :reader available
    :initarg :available
    :type cl:boolean
    :initform cl:nil)
   (package
    :reader package
    :initarg :package
    :type auto_smart_factory-msg:Package
    :initform (cl:make-instance 'auto_smart_factory-msg:Package)))
)

(cl:defclass TrayState (<TrayState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrayState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrayState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<TrayState> is deprecated: use auto_smart_factory-msg:TrayState instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TrayState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:id-val is deprecated.  Use auto_smart_factory-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'occupied-val :lambda-list '(m))
(cl:defmethod occupied-val ((m <TrayState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:occupied-val is deprecated.  Use auto_smart_factory-msg:occupied instead.")
  (occupied m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TrayState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:available-val is deprecated.  Use auto_smart_factory-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'package-val :lambda-list '(m))
(cl:defmethod package-val ((m <TrayState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:package-val is deprecated.  Use auto_smart_factory-msg:package instead.")
  (package m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrayState>) ostream)
  "Serializes a message object of type '<TrayState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'occupied) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'available) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'package) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrayState>) istream)
  "Deserializes a message object of type '<TrayState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'occupied) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'available) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'package) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrayState>)))
  "Returns string type for a message object of type '<TrayState>"
  "auto_smart_factory/TrayState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrayState)))
  "Returns string type for a message object of type 'TrayState"
  "auto_smart_factory/TrayState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrayState>)))
  "Returns md5sum for a message object of type '<TrayState>"
  "643c502f6bd6aed46ad54aaea2358f46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrayState)))
  "Returns md5sum for a message object of type 'TrayState"
  "643c502f6bd6aed46ad54aaea2358f46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrayState>)))
  "Returns full string definition for message of type '<TrayState>"
  (cl:format cl:nil "# the unique tray ID~%uint32 id~%~%# Indicates whether the tray is occupied or not.~%bool occupied~%~%# Availability of the tray. If false the the tray is allocated by a task.~%bool available~%~%# information about the package stored in this tray (only valid if state != free)~%Package package~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrayState)))
  "Returns full string definition for message of type 'TrayState"
  (cl:format cl:nil "# the unique tray ID~%uint32 id~%~%# Indicates whether the tray is occupied or not.~%bool occupied~%~%# Availability of the tray. If false the the tray is allocated by a task.~%bool available~%~%# information about the package stored in this tray (only valid if state != free)~%Package package~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrayState>))
  (cl:+ 0
     4
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'package))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrayState>))
  "Converts a ROS message object to a list"
  (cl:list 'TrayState
    (cl:cons ':id (id msg))
    (cl:cons ':occupied (occupied msg))
    (cl:cons ':available (available msg))
    (cl:cons ':package (package msg))
))
