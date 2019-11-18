; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude PerformTaskTest-request.msg.html

(cl:defclass <PerformTaskTest-request> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (start_pos
    :reader start_pos
    :initarg :start_pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (end_pos
    :reader end_pos
    :initarg :end_pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass PerformTaskTest-request (<PerformTaskTest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerformTaskTest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerformTaskTest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<PerformTaskTest-request> is deprecated: use auto_smart_factory-srv:PerformTaskTest-request instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <PerformTaskTest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:task_id-val is deprecated.  Use auto_smart_factory-srv:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'start_pos-val :lambda-list '(m))
(cl:defmethod start_pos-val ((m <PerformTaskTest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:start_pos-val is deprecated.  Use auto_smart_factory-srv:start_pos instead.")
  (start_pos m))

(cl:ensure-generic-function 'end_pos-val :lambda-list '(m))
(cl:defmethod end_pos-val ((m <PerformTaskTest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:end_pos-val is deprecated.  Use auto_smart_factory-srv:end_pos instead.")
  (end_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerformTaskTest-request>) ostream)
  "Serializes a message object of type '<PerformTaskTest-request>"
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_pos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerformTaskTest-request>) istream)
  "Deserializes a message object of type '<PerformTaskTest-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_pos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerformTaskTest-request>)))
  "Returns string type for a service object of type '<PerformTaskTest-request>"
  "auto_smart_factory/PerformTaskTestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerformTaskTest-request)))
  "Returns string type for a service object of type 'PerformTaskTest-request"
  "auto_smart_factory/PerformTaskTestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerformTaskTest-request>)))
  "Returns md5sum for a message object of type '<PerformTaskTest-request>"
  "190d24b4aa92517c4ea4ac2d1df79c43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerformTaskTest-request)))
  "Returns md5sum for a message object of type 'PerformTaskTest-request"
  "190d24b4aa92517c4ea4ac2d1df79c43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerformTaskTest-request>)))
  "Returns full string definition for message of type '<PerformTaskTest-request>"
  (cl:format cl:nil "int32 task_id~%geometry_msgs/Point start_pos~%geometry_msgs/Point end_pos~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerformTaskTest-request)))
  "Returns full string definition for message of type 'PerformTaskTest-request"
  (cl:format cl:nil "int32 task_id~%geometry_msgs/Point start_pos~%geometry_msgs/Point end_pos~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerformTaskTest-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_pos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerformTaskTest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PerformTaskTest-request
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':start_pos (start_pos msg))
    (cl:cons ':end_pos (end_pos msg))
))
;//! \htmlinclude PerformTaskTest-response.msg.html

(cl:defclass <PerformTaskTest-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PerformTaskTest-response (<PerformTaskTest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerformTaskTest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerformTaskTest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<PerformTaskTest-response> is deprecated: use auto_smart_factory-srv:PerformTaskTest-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PerformTaskTest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerformTaskTest-response>) ostream)
  "Serializes a message object of type '<PerformTaskTest-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerformTaskTest-response>) istream)
  "Deserializes a message object of type '<PerformTaskTest-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerformTaskTest-response>)))
  "Returns string type for a service object of type '<PerformTaskTest-response>"
  "auto_smart_factory/PerformTaskTestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerformTaskTest-response)))
  "Returns string type for a service object of type 'PerformTaskTest-response"
  "auto_smart_factory/PerformTaskTestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerformTaskTest-response>)))
  "Returns md5sum for a message object of type '<PerformTaskTest-response>"
  "190d24b4aa92517c4ea4ac2d1df79c43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerformTaskTest-response)))
  "Returns md5sum for a message object of type 'PerformTaskTest-response"
  "190d24b4aa92517c4ea4ac2d1df79c43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerformTaskTest-response>)))
  "Returns full string definition for message of type '<PerformTaskTest-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerformTaskTest-response)))
  "Returns full string definition for message of type 'PerformTaskTest-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerformTaskTest-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerformTaskTest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PerformTaskTest-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PerformTaskTest)))
  'PerformTaskTest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PerformTaskTest)))
  'PerformTaskTest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerformTaskTest)))
  "Returns string type for a service object of type '<PerformTaskTest>"
  "auto_smart_factory/PerformTaskTest")