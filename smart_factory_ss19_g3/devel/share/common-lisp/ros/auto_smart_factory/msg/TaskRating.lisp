; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude TaskRating.msg.html

(cl:defclass <TaskRating> (roslisp-msg-protocol:ros-message)
  ((request_id
    :reader request_id
    :initarg :request_id
    :type cl:integer
    :initform 0)
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (start_id
    :reader start_id
    :initarg :start_id
    :type cl:integer
    :initform 0)
   (end_id
    :reader end_id
    :initarg :end_id
    :type cl:integer
    :initform 0)
   (reject
    :reader reject
    :initarg :reject
    :type cl:boolean
    :initform cl:nil)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (estimatedDuration
    :reader estimatedDuration
    :initarg :estimatedDuration
    :type cl:float
    :initform 0.0))
)

(cl:defclass TaskRating (<TaskRating>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskRating>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskRating)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<TaskRating> is deprecated: use auto_smart_factory-msg:TaskRating instead.")))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <TaskRating>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:request_id-val is deprecated.  Use auto_smart_factory-msg:request_id instead.")
  (request_id m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <TaskRating>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:robot_id-val is deprecated.  Use auto_smart_factory-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'start_id-val :lambda-list '(m))
(cl:defmethod start_id-val ((m <TaskRating>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:start_id-val is deprecated.  Use auto_smart_factory-msg:start_id instead.")
  (start_id m))

(cl:ensure-generic-function 'end_id-val :lambda-list '(m))
(cl:defmethod end_id-val ((m <TaskRating>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:end_id-val is deprecated.  Use auto_smart_factory-msg:end_id instead.")
  (end_id m))

(cl:ensure-generic-function 'reject-val :lambda-list '(m))
(cl:defmethod reject-val ((m <TaskRating>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:reject-val is deprecated.  Use auto_smart_factory-msg:reject instead.")
  (reject m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <TaskRating>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:score-val is deprecated.  Use auto_smart_factory-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'estimatedDuration-val :lambda-list '(m))
(cl:defmethod estimatedDuration-val ((m <TaskRating>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:estimatedDuration-val is deprecated.  Use auto_smart_factory-msg:estimatedDuration instead.")
  (estimatedDuration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskRating>) ostream)
  "Serializes a message object of type '<TaskRating>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'end_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'end_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reject) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'estimatedDuration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskRating>) istream)
  "Deserializes a message object of type '<TaskRating>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'end_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'end_id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reject) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'estimatedDuration) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskRating>)))
  "Returns string type for a message object of type '<TaskRating>"
  "auto_smart_factory/TaskRating")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskRating)))
  "Returns string type for a message object of type 'TaskRating"
  "auto_smart_factory/TaskRating")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskRating>)))
  "Returns md5sum for a message object of type '<TaskRating>"
  "149ffda46e6e0172c546d8c62178a040")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskRating)))
  "Returns md5sum for a message object of type 'TaskRating"
  "149ffda46e6e0172c546d8c62178a040")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskRating>)))
  "Returns full string definition for message of type '<TaskRating>"
  (cl:format cl:nil "# response of a robot, if it wants to take a certain task and if so what its score is~%~%uint32 request_id~%string robot_id~%uint32 start_id~%uint32 end_id~%bool reject~%float64 score~%float64 estimatedDuration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskRating)))
  "Returns full string definition for message of type 'TaskRating"
  (cl:format cl:nil "# response of a robot, if it wants to take a certain task and if so what its score is~%~%uint32 request_id~%string robot_id~%uint32 start_id~%uint32 end_id~%bool reject~%float64 score~%float64 estimatedDuration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskRating>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'robot_id))
     4
     4
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskRating>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskRating
    (cl:cons ':request_id (request_id msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':start_id (start_id msg))
    (cl:cons ':end_id (end_id msg))
    (cl:cons ':reject (reject msg))
    (cl:cons ':score (score msg))
    (cl:cons ':estimatedDuration (estimatedDuration msg))
))
