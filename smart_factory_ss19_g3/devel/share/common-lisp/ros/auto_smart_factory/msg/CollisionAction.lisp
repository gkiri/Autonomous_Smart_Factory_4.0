; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude CollisionAction.msg.html

(cl:defclass <CollisionAction> (roslisp-msg-protocol:ros-message)
  ((RobotId
    :reader RobotId
    :initarg :RobotId
    :type cl:string
    :initform "")
   (halt
    :reader halt
    :initarg :halt
    :type cl:boolean
    :initform cl:nil)
   (time_to_halt
    :reader time_to_halt
    :initarg :time_to_halt
    :type cl:float
    :initform 0.0))
)

(cl:defclass CollisionAction (<CollisionAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisionAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisionAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<CollisionAction> is deprecated: use auto_smart_factory-msg:CollisionAction instead.")))

(cl:ensure-generic-function 'RobotId-val :lambda-list '(m))
(cl:defmethod RobotId-val ((m <CollisionAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:RobotId-val is deprecated.  Use auto_smart_factory-msg:RobotId instead.")
  (RobotId m))

(cl:ensure-generic-function 'halt-val :lambda-list '(m))
(cl:defmethod halt-val ((m <CollisionAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:halt-val is deprecated.  Use auto_smart_factory-msg:halt instead.")
  (halt m))

(cl:ensure-generic-function 'time_to_halt-val :lambda-list '(m))
(cl:defmethod time_to_halt-val ((m <CollisionAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:time_to_halt-val is deprecated.  Use auto_smart_factory-msg:time_to_halt instead.")
  (time_to_halt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisionAction>) ostream)
  "Serializes a message object of type '<CollisionAction>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'RobotId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'RobotId))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'halt) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_to_halt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisionAction>) istream)
  "Deserializes a message object of type '<CollisionAction>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RobotId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'RobotId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'halt) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_to_halt) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisionAction>)))
  "Returns string type for a message object of type '<CollisionAction>"
  "auto_smart_factory/CollisionAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionAction)))
  "Returns string type for a message object of type 'CollisionAction"
  "auto_smart_factory/CollisionAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisionAction>)))
  "Returns md5sum for a message object of type '<CollisionAction>"
  "7d85d6f3795d2f6173839c2dc98263c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisionAction)))
  "Returns md5sum for a message object of type 'CollisionAction"
  "7d85d6f3795d2f6173839c2dc98263c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisionAction>)))
  "Returns full string definition for message of type '<CollisionAction>"
  (cl:format cl:nil "# publishes robot ID~%# publishes if robot needs to halt completely or only stops moving until a strategy found~%# specifies duration of halt~%~%string RobotId~%bool halt~%float32 time_to_halt~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisionAction)))
  "Returns full string definition for message of type 'CollisionAction"
  (cl:format cl:nil "# publishes robot ID~%# publishes if robot needs to halt completely or only stops moving until a strategy found~%# specifies duration of halt~%~%string RobotId~%bool halt~%float32 time_to_halt~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisionAction>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'RobotId))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisionAction>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisionAction
    (cl:cons ':RobotId (RobotId msg))
    (cl:cons ':halt (halt msg))
    (cl:cons ':time_to_halt (time_to_halt msg))
))
