; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude RobotJourney.msg.html

(cl:defclass <RobotJourney> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (battery_consumption
    :reader battery_consumption
    :initarg :battery_consumption
    :type cl:float
    :initform 0.0)
   (time_for_completion
    :reader time_for_completion
    :initarg :time_for_completion
    :type cl:integer
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass RobotJourney (<RobotJourney>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotJourney>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotJourney)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<RobotJourney> is deprecated: use auto_smart_factory-msg:RobotJourney instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RobotJourney>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:id-val is deprecated.  Use auto_smart_factory-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'battery_consumption-val :lambda-list '(m))
(cl:defmethod battery_consumption-val ((m <RobotJourney>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:battery_consumption-val is deprecated.  Use auto_smart_factory-msg:battery_consumption instead.")
  (battery_consumption m))

(cl:ensure-generic-function 'time_for_completion-val :lambda-list '(m))
(cl:defmethod time_for_completion-val ((m <RobotJourney>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:time_for_completion-val is deprecated.  Use auto_smart_factory-msg:time_for_completion instead.")
  (time_for_completion m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <RobotJourney>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:distance-val is deprecated.  Use auto_smart_factory-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotJourney>) ostream)
  "Serializes a message object of type '<RobotJourney>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_consumption))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'time_for_completion)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotJourney>) istream)
  "Deserializes a message object of type '<RobotJourney>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_consumption) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_for_completion) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotJourney>)))
  "Returns string type for a message object of type '<RobotJourney>"
  "auto_smart_factory/RobotJourney")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotJourney)))
  "Returns string type for a message object of type 'RobotJourney"
  "auto_smart_factory/RobotJourney")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotJourney>)))
  "Returns md5sum for a message object of type '<RobotJourney>"
  "88c56eff22bff62afcdddb15045697bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotJourney)))
  "Returns md5sum for a message object of type 'RobotJourney"
  "88c56eff22bff62afcdddb15045697bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotJourney>)))
  "Returns full string definition for message of type '<RobotJourney>"
  (cl:format cl:nil "# robot id~%string id~%~%# battery consumption~%float32 battery_consumption~%~%# time it took to complete the task~%int32 time_for_completion~%~%# distance travelled~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotJourney)))
  "Returns full string definition for message of type 'RobotJourney"
  (cl:format cl:nil "# robot id~%string id~%~%# battery consumption~%float32 battery_consumption~%~%# time it took to complete the task~%int32 time_for_completion~%~%# distance travelled~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotJourney>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotJourney>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotJourney
    (cl:cons ':id (id msg))
    (cl:cons ':battery_consumption (battery_consumption msg))
    (cl:cons ':time_for_completion (time_for_completion msg))
    (cl:cons ':distance (distance msg))
))
