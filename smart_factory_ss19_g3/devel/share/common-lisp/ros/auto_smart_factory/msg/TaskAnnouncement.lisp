; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude TaskAnnouncement.msg.html

(cl:defclass <TaskAnnouncement> (roslisp-msg-protocol:ros-message)
  ((request_id
    :reader request_id
    :initarg :request_id
    :type cl:integer
    :initform 0)
   (start_ids
    :reader start_ids
    :initarg :start_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (end_ids
    :reader end_ids
    :initarg :end_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:real
    :initform 0))
)

(cl:defclass TaskAnnouncement (<TaskAnnouncement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskAnnouncement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskAnnouncement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<TaskAnnouncement> is deprecated: use auto_smart_factory-msg:TaskAnnouncement instead.")))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <TaskAnnouncement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:request_id-val is deprecated.  Use auto_smart_factory-msg:request_id instead.")
  (request_id m))

(cl:ensure-generic-function 'start_ids-val :lambda-list '(m))
(cl:defmethod start_ids-val ((m <TaskAnnouncement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:start_ids-val is deprecated.  Use auto_smart_factory-msg:start_ids instead.")
  (start_ids m))

(cl:ensure-generic-function 'end_ids-val :lambda-list '(m))
(cl:defmethod end_ids-val ((m <TaskAnnouncement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:end_ids-val is deprecated.  Use auto_smart_factory-msg:end_ids instead.")
  (end_ids m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <TaskAnnouncement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:timeout-val is deprecated.  Use auto_smart_factory-msg:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskAnnouncement>) ostream)
  "Serializes a message object of type '<TaskAnnouncement>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'start_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'start_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'end_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'end_ids))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timeout)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timeout) (cl:floor (cl:slot-value msg 'timeout)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskAnnouncement>) istream)
  "Deserializes a message object of type '<TaskAnnouncement>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'start_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'start_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'end_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'end_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskAnnouncement>)))
  "Returns string type for a message object of type '<TaskAnnouncement>"
  "auto_smart_factory/TaskAnnouncement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskAnnouncement)))
  "Returns string type for a message object of type 'TaskAnnouncement"
  "auto_smart_factory/TaskAnnouncement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskAnnouncement>)))
  "Returns md5sum for a message object of type '<TaskAnnouncement>"
  "e8ab73e2a72622150a41cf7e28715948")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskAnnouncement)))
  "Returns md5sum for a message object of type 'TaskAnnouncement"
  "e8ab73e2a72622150a41cf7e28715948")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskAnnouncement>)))
  "Returns full string definition for message of type '<TaskAnnouncement>"
  (cl:format cl:nil "# Announces a task to the robots.~%~%uint32 request_id~%uint32[] start_ids~%uint32[] end_ids~%time timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskAnnouncement)))
  "Returns full string definition for message of type 'TaskAnnouncement"
  (cl:format cl:nil "# Announces a task to the robots.~%~%uint32 request_id~%uint32[] start_ids~%uint32[] end_ids~%time timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskAnnouncement>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'start_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'end_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskAnnouncement>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskAnnouncement
    (cl:cons ':request_id (request_id msg))
    (cl:cons ':start_ids (start_ids msg))
    (cl:cons ':end_ids (end_ids msg))
    (cl:cons ':timeout (timeout msg))
))
