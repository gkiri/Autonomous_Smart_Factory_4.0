; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude StorageUpdate.msg.html

(cl:defclass <StorageUpdate> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type auto_smart_factory-msg:TrayState
    :initform (cl:make-instance 'auto_smart_factory-msg:TrayState))
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StorageUpdate (<StorageUpdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StorageUpdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StorageUpdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<StorageUpdate> is deprecated: use auto_smart_factory-msg:StorageUpdate instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <StorageUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:stamp-val is deprecated.  Use auto_smart_factory-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <StorageUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:state-val is deprecated.  Use auto_smart_factory-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <StorageUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:action-val is deprecated.  Use auto_smart_factory-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StorageUpdate>)))
    "Constants for message type '<StorageUpdate>"
  '((:UNKNOWN . 0)
    (:RESERVATION . 1)
    (:DERESERVATION . 2)
    (:OCCUPATION . 3)
    (:DEOCCUPATION . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StorageUpdate)))
    "Constants for message type 'StorageUpdate"
  '((:UNKNOWN . 0)
    (:RESERVATION . 1)
    (:DERESERVATION . 2)
    (:OCCUPATION . 3)
    (:DEOCCUPATION . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StorageUpdate>) ostream)
  "Serializes a message object of type '<StorageUpdate>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StorageUpdate>) istream)
  "Deserializes a message object of type '<StorageUpdate>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StorageUpdate>)))
  "Returns string type for a message object of type '<StorageUpdate>"
  "auto_smart_factory/StorageUpdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StorageUpdate)))
  "Returns string type for a message object of type 'StorageUpdate"
  "auto_smart_factory/StorageUpdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StorageUpdate>)))
  "Returns md5sum for a message object of type '<StorageUpdate>"
  "83cea01295e4c0b59e3822307599398d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StorageUpdate)))
  "Returns md5sum for a message object of type 'StorageUpdate"
  "83cea01295e4c0b59e3822307599398d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StorageUpdate>)))
  "Returns full string definition for message of type '<StorageUpdate>"
  (cl:format cl:nil "# timestamp of the update~%time stamp~%~%# updated state~%TrayState state~%~%# The action that let to this update~%uint8 UNKNOWN=0~%uint8 RESERVATION=1~%uint8 DERESERVATION=2~%uint8 OCCUPATION=3~%uint8 DEOCCUPATION=4~%~%uint8 action~%~%~%================================================================================~%MSG: auto_smart_factory/TrayState~%# the unique tray ID~%uint32 id~%~%# Indicates whether the tray is occupied or not.~%bool occupied~%~%# Availability of the tray. If false the the tray is allocated by a task.~%bool available~%~%# information about the package stored in this tray (only valid if state != free)~%Package package~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StorageUpdate)))
  "Returns full string definition for message of type 'StorageUpdate"
  (cl:format cl:nil "# timestamp of the update~%time stamp~%~%# updated state~%TrayState state~%~%# The action that let to this update~%uint8 UNKNOWN=0~%uint8 RESERVATION=1~%uint8 DERESERVATION=2~%uint8 OCCUPATION=3~%uint8 DEOCCUPATION=4~%~%uint8 action~%~%~%================================================================================~%MSG: auto_smart_factory/TrayState~%# the unique tray ID~%uint32 id~%~%# Indicates whether the tray is occupied or not.~%bool occupied~%~%# Availability of the tray. If false the the tray is allocated by a task.~%bool available~%~%# information about the package stored in this tray (only valid if state != free)~%Package package~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StorageUpdate>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StorageUpdate>))
  "Converts a ROS message object to a list"
  (cl:list 'StorageUpdate
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':state (state msg))
    (cl:cons ':action (action msg))
))
