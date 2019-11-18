; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude AssignTask-request.msg.html

(cl:defclass <AssignTask-request> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (input_tray
    :reader input_tray
    :initarg :input_tray
    :type cl:integer
    :initform 0)
   (storage_tray
    :reader storage_tray
    :initarg :storage_tray
    :type cl:integer
    :initform 0))
)

(cl:defclass AssignTask-request (<AssignTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<AssignTask-request> is deprecated: use auto_smart_factory-srv:AssignTask-request instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:task_id-val is deprecated.  Use auto_smart_factory-srv:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'input_tray-val :lambda-list '(m))
(cl:defmethod input_tray-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:input_tray-val is deprecated.  Use auto_smart_factory-srv:input_tray instead.")
  (input_tray m))

(cl:ensure-generic-function 'storage_tray-val :lambda-list '(m))
(cl:defmethod storage_tray-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:storage_tray-val is deprecated.  Use auto_smart_factory-srv:storage_tray instead.")
  (storage_tray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignTask-request>) ostream)
  "Serializes a message object of type '<AssignTask-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'input_tray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'input_tray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'input_tray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'input_tray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'storage_tray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'storage_tray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'storage_tray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'storage_tray)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignTask-request>) istream)
  "Deserializes a message object of type '<AssignTask-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'input_tray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'input_tray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'input_tray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'input_tray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'storage_tray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'storage_tray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'storage_tray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'storage_tray)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignTask-request>)))
  "Returns string type for a service object of type '<AssignTask-request>"
  "auto_smart_factory/AssignTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignTask-request)))
  "Returns string type for a service object of type 'AssignTask-request"
  "auto_smart_factory/AssignTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignTask-request>)))
  "Returns md5sum for a message object of type '<AssignTask-request>"
  "0c82659e0ca2d9d96ef532df87b96bb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignTask-request)))
  "Returns md5sum for a message object of type 'AssignTask-request"
  "0c82659e0ca2d9d96ef532df87b96bb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignTask-request>)))
  "Returns full string definition for message of type '<AssignTask-request>"
  (cl:format cl:nil "uint32 task_id~%uint32 input_tray~%uint32 storage_tray~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignTask-request)))
  "Returns full string definition for message of type 'AssignTask-request"
  (cl:format cl:nil "uint32 task_id~%uint32 input_tray~%uint32 storage_tray~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignTask-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignTask-request
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':input_tray (input_tray msg))
    (cl:cons ':storage_tray (storage_tray msg))
))
;//! \htmlinclude AssignTask-response.msg.html

(cl:defclass <AssignTask-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AssignTask-response (<AssignTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<AssignTask-response> is deprecated: use auto_smart_factory-srv:AssignTask-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AssignTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignTask-response>) ostream)
  "Serializes a message object of type '<AssignTask-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignTask-response>) istream)
  "Deserializes a message object of type '<AssignTask-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignTask-response>)))
  "Returns string type for a service object of type '<AssignTask-response>"
  "auto_smart_factory/AssignTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignTask-response)))
  "Returns string type for a service object of type 'AssignTask-response"
  "auto_smart_factory/AssignTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignTask-response>)))
  "Returns md5sum for a message object of type '<AssignTask-response>"
  "0c82659e0ca2d9d96ef532df87b96bb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignTask-response)))
  "Returns md5sum for a message object of type 'AssignTask-response"
  "0c82659e0ca2d9d96ef532df87b96bb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignTask-response>)))
  "Returns full string definition for message of type '<AssignTask-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignTask-response)))
  "Returns full string definition for message of type 'AssignTask-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignTask-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignTask-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AssignTask)))
  'AssignTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AssignTask)))
  'AssignTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignTask)))
  "Returns string type for a service object of type '<AssignTask>"
  "auto_smart_factory/AssignTask")