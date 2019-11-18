; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude TaskStarted.msg.html

(cl:defclass <TaskStarted> (roslisp-msg-protocol:ros-message)
  ((started
    :reader started
    :initarg :started
    :type cl:boolean
    :initform cl:nil)
   (taskId
    :reader taskId
    :initarg :taskId
    :type cl:integer
    :initform 0))
)

(cl:defclass TaskStarted (<TaskStarted>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskStarted>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskStarted)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<TaskStarted> is deprecated: use auto_smart_factory-msg:TaskStarted instead.")))

(cl:ensure-generic-function 'started-val :lambda-list '(m))
(cl:defmethod started-val ((m <TaskStarted>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:started-val is deprecated.  Use auto_smart_factory-msg:started instead.")
  (started m))

(cl:ensure-generic-function 'taskId-val :lambda-list '(m))
(cl:defmethod taskId-val ((m <TaskStarted>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:taskId-val is deprecated.  Use auto_smart_factory-msg:taskId instead.")
  (taskId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskStarted>) ostream)
  "Serializes a message object of type '<TaskStarted>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'started) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'taskId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskStarted>) istream)
  "Deserializes a message object of type '<TaskStarted>"
    (cl:setf (cl:slot-value msg 'started) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskStarted>)))
  "Returns string type for a message object of type '<TaskStarted>"
  "auto_smart_factory/TaskStarted")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskStarted)))
  "Returns string type for a message object of type 'TaskStarted"
  "auto_smart_factory/TaskStarted")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskStarted>)))
  "Returns md5sum for a message object of type '<TaskStarted>"
  "c8c4bfc821df46bfcf49ec83e2835c26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskStarted)))
  "Returns md5sum for a message object of type 'TaskStarted"
  "c8c4bfc821df46bfcf49ec83e2835c26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskStarted>)))
  "Returns full string definition for message of type '<TaskStarted>"
  (cl:format cl:nil "# message a robot sends to the task planner when it started a task from its queue~%~%bool started~%uint32 taskId~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskStarted)))
  "Returns full string definition for message of type 'TaskStarted"
  (cl:format cl:nil "# message a robot sends to the task planner when it started a task from its queue~%~%bool started~%uint32 taskId~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskStarted>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskStarted>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskStarted
    (cl:cons ':started (started msg))
    (cl:cons ':taskId (taskId msg))
))
