; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude StorageState.msg.html

(cl:defclass <StorageState> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (tray_states
    :reader tray_states
    :initarg :tray_states
    :type (cl:vector auto_smart_factory-msg:TrayState)
   :initform (cl:make-array 0 :element-type 'auto_smart_factory-msg:TrayState :initial-element (cl:make-instance 'auto_smart_factory-msg:TrayState))))
)

(cl:defclass StorageState (<StorageState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StorageState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StorageState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<StorageState> is deprecated: use auto_smart_factory-msg:StorageState instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <StorageState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:stamp-val is deprecated.  Use auto_smart_factory-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'tray_states-val :lambda-list '(m))
(cl:defmethod tray_states-val ((m <StorageState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:tray_states-val is deprecated.  Use auto_smart_factory-msg:tray_states instead.")
  (tray_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StorageState>) ostream)
  "Serializes a message object of type '<StorageState>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tray_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tray_states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StorageState>) istream)
  "Deserializes a message object of type '<StorageState>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tray_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tray_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auto_smart_factory-msg:TrayState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StorageState>)))
  "Returns string type for a message object of type '<StorageState>"
  "auto_smart_factory/StorageState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StorageState)))
  "Returns string type for a message object of type 'StorageState"
  "auto_smart_factory/StorageState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StorageState>)))
  "Returns md5sum for a message object of type '<StorageState>"
  "f58a17d0041d1e3c68f904805f0526cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StorageState)))
  "Returns md5sum for a message object of type 'StorageState"
  "f58a17d0041d1e3c68f904805f0526cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StorageState>)))
  "Returns full string definition for message of type '<StorageState>"
  (cl:format cl:nil "# timestamp of the state~%time stamp~%~%# States of the instances of the three tray types~%TrayState[] tray_states~%~%================================================================================~%MSG: auto_smart_factory/TrayState~%# the unique tray ID~%uint32 id~%~%# Indicates whether the tray is occupied or not.~%bool occupied~%~%# Availability of the tray. If false the the tray is allocated by a task.~%bool available~%~%# information about the package stored in this tray (only valid if state != free)~%Package package~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StorageState)))
  "Returns full string definition for message of type 'StorageState"
  (cl:format cl:nil "# timestamp of the state~%time stamp~%~%# States of the instances of the three tray types~%TrayState[] tray_states~%~%================================================================================~%MSG: auto_smart_factory/TrayState~%# the unique tray ID~%uint32 id~%~%# Indicates whether the tray is occupied or not.~%bool occupied~%~%# Availability of the tray. If false the the tray is allocated by a task.~%bool available~%~%# information about the package stored in this tray (only valid if state != free)~%Package package~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StorageState>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tray_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StorageState>))
  "Converts a ROS message object to a list"
  (cl:list 'StorageState
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':tray_states (tray_states msg))
))
