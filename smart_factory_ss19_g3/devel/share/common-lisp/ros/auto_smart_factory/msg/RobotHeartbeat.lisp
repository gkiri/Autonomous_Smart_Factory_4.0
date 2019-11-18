; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude RobotHeartbeat.msg.html

(cl:defclass <RobotHeartbeat> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (idle
    :reader idle
    :initarg :idle
    :type cl:boolean
    :initform cl:nil)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (orientation
    :reader orientation
    :initarg :orientation
    :type cl:float
    :initform 0.0)
   (battery_level
    :reader battery_level
    :initarg :battery_level
    :type cl:float
    :initform 0.0)
   (eta
    :reader eta
    :initarg :eta
    :type cl:float
    :initform 0.0)
   (with_package
    :reader with_package
    :initarg :with_package
    :type cl:boolean
    :initform cl:nil)
   (queue_length
    :reader queue_length
    :initarg :queue_length
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RobotHeartbeat (<RobotHeartbeat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotHeartbeat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotHeartbeat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<RobotHeartbeat> is deprecated: use auto_smart_factory-msg:RobotHeartbeat instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RobotHeartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:id-val is deprecated.  Use auto_smart_factory-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'idle-val :lambda-list '(m))
(cl:defmethod idle-val ((m <RobotHeartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:idle-val is deprecated.  Use auto_smart_factory-msg:idle instead.")
  (idle m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <RobotHeartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:position-val is deprecated.  Use auto_smart_factory-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <RobotHeartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:orientation-val is deprecated.  Use auto_smart_factory-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'battery_level-val :lambda-list '(m))
(cl:defmethod battery_level-val ((m <RobotHeartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:battery_level-val is deprecated.  Use auto_smart_factory-msg:battery_level instead.")
  (battery_level m))

(cl:ensure-generic-function 'eta-val :lambda-list '(m))
(cl:defmethod eta-val ((m <RobotHeartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:eta-val is deprecated.  Use auto_smart_factory-msg:eta instead.")
  (eta m))

(cl:ensure-generic-function 'with_package-val :lambda-list '(m))
(cl:defmethod with_package-val ((m <RobotHeartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:with_package-val is deprecated.  Use auto_smart_factory-msg:with_package instead.")
  (with_package m))

(cl:ensure-generic-function 'queue_length-val :lambda-list '(m))
(cl:defmethod queue_length-val ((m <RobotHeartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:queue_length-val is deprecated.  Use auto_smart_factory-msg:queue_length instead.")
  (queue_length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotHeartbeat>) ostream)
  "Serializes a message object of type '<RobotHeartbeat>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'idle) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'eta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'with_package) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'queue_length)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotHeartbeat>) istream)
  "Deserializes a message object of type '<RobotHeartbeat>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'idle) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'eta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'with_package) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'queue_length)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotHeartbeat>)))
  "Returns string type for a message object of type '<RobotHeartbeat>"
  "auto_smart_factory/RobotHeartbeat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotHeartbeat)))
  "Returns string type for a message object of type 'RobotHeartbeat"
  "auto_smart_factory/RobotHeartbeat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotHeartbeat>)))
  "Returns md5sum for a message object of type '<RobotHeartbeat>"
  "ba85488467034734d06763799c12f823")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotHeartbeat)))
  "Returns md5sum for a message object of type 'RobotHeartbeat"
  "ba85488467034734d06763799c12f823")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotHeartbeat>)))
  "Returns full string definition for message of type '<RobotHeartbeat>"
  (cl:format cl:nil "# robot id~%string id~%~%# is the robot idle?~%bool idle~%~%# robot position~%geometry_msgs/Point position~%~%# robot orientation~%float32 orientation~%~%# battery state of robot 0 - 100~%float32 battery_level~%~%# eta for a robot~%float32 eta~%~%# is it carring a package?~%bool with_package~%~%# package queue size~%uint8 queue_length~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotHeartbeat)))
  "Returns full string definition for message of type 'RobotHeartbeat"
  (cl:format cl:nil "# robot id~%string id~%~%# is the robot idle?~%bool idle~%~%# robot position~%geometry_msgs/Point position~%~%# robot orientation~%float32 orientation~%~%# battery state of robot 0 - 100~%float32 battery_level~%~%# eta for a robot~%float32 eta~%~%# is it carring a package?~%bool with_package~%~%# package queue size~%uint8 queue_length~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotHeartbeat>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotHeartbeat>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotHeartbeat
    (cl:cons ':id (id msg))
    (cl:cons ':idle (idle msg))
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':battery_level (battery_level msg))
    (cl:cons ':eta (eta msg))
    (cl:cons ':with_package (with_package msg))
    (cl:cons ':queue_length (queue_length msg))
))
