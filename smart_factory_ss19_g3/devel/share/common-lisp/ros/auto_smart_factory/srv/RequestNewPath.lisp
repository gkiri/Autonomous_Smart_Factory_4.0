; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude RequestNewPath-request.msg.html

(cl:defclass <RequestNewPath-request> (roslisp-msg-protocol:ros-message)
  ((agent_id
    :reader agent_id
    :initarg :agent_id
    :type cl:string
    :initform "")
   (next_chunk
    :reader next_chunk
    :initarg :next_chunk
    :type cl:boolean
    :initform cl:nil)
   (start_node
    :reader start_node
    :initarg :start_node
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (end_node
    :reader end_node
    :initarg :end_node
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass RequestNewPath-request (<RequestNewPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestNewPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestNewPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<RequestNewPath-request> is deprecated: use auto_smart_factory-srv:RequestNewPath-request instead.")))

(cl:ensure-generic-function 'agent_id-val :lambda-list '(m))
(cl:defmethod agent_id-val ((m <RequestNewPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:agent_id-val is deprecated.  Use auto_smart_factory-srv:agent_id instead.")
  (agent_id m))

(cl:ensure-generic-function 'next_chunk-val :lambda-list '(m))
(cl:defmethod next_chunk-val ((m <RequestNewPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:next_chunk-val is deprecated.  Use auto_smart_factory-srv:next_chunk instead.")
  (next_chunk m))

(cl:ensure-generic-function 'start_node-val :lambda-list '(m))
(cl:defmethod start_node-val ((m <RequestNewPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:start_node-val is deprecated.  Use auto_smart_factory-srv:start_node instead.")
  (start_node m))

(cl:ensure-generic-function 'end_node-val :lambda-list '(m))
(cl:defmethod end_node-val ((m <RequestNewPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:end_node-val is deprecated.  Use auto_smart_factory-srv:end_node instead.")
  (end_node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestNewPath-request>) ostream)
  "Serializes a message object of type '<RequestNewPath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'agent_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'agent_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'next_chunk) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_node) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_node) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestNewPath-request>) istream)
  "Deserializes a message object of type '<RequestNewPath-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agent_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'agent_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'next_chunk) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_node) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_node) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestNewPath-request>)))
  "Returns string type for a service object of type '<RequestNewPath-request>"
  "auto_smart_factory/RequestNewPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestNewPath-request)))
  "Returns string type for a service object of type 'RequestNewPath-request"
  "auto_smart_factory/RequestNewPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestNewPath-request>)))
  "Returns md5sum for a message object of type '<RequestNewPath-request>"
  "fc441636b7a0cbdae9c6aa18043de91f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestNewPath-request)))
  "Returns md5sum for a message object of type 'RequestNewPath-request"
  "fc441636b7a0cbdae9c6aa18043de91f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestNewPath-request>)))
  "Returns full string definition for message of type '<RequestNewPath-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%string agent_id~%bool next_chunk~%~%geometry_msgs/Point start_node~%geometry_msgs/Point end_node~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestNewPath-request)))
  "Returns full string definition for message of type 'RequestNewPath-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%string agent_id~%bool next_chunk~%~%geometry_msgs/Point start_node~%geometry_msgs/Point end_node~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestNewPath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'agent_id))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_node))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_node))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestNewPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestNewPath-request
    (cl:cons ':agent_id (agent_id msg))
    (cl:cons ':next_chunk (next_chunk msg))
    (cl:cons ':start_node (start_node msg))
    (cl:cons ':end_node (end_node msg))
))
;//! \htmlinclude RequestNewPath-response.msg.html

(cl:defclass <RequestNewPath-response> (roslisp-msg-protocol:ros-message)
  ((new_path_nodes
    :reader new_path_nodes
    :initarg :new_path_nodes
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (main_path_length
    :reader main_path_length
    :initarg :main_path_length
    :type cl:integer
    :initform 0)
   (is_last_chunk
    :reader is_last_chunk
    :initarg :is_last_chunk
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RequestNewPath-response (<RequestNewPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestNewPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestNewPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<RequestNewPath-response> is deprecated: use auto_smart_factory-srv:RequestNewPath-response instead.")))

(cl:ensure-generic-function 'new_path_nodes-val :lambda-list '(m))
(cl:defmethod new_path_nodes-val ((m <RequestNewPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:new_path_nodes-val is deprecated.  Use auto_smart_factory-srv:new_path_nodes instead.")
  (new_path_nodes m))

(cl:ensure-generic-function 'main_path_length-val :lambda-list '(m))
(cl:defmethod main_path_length-val ((m <RequestNewPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:main_path_length-val is deprecated.  Use auto_smart_factory-srv:main_path_length instead.")
  (main_path_length m))

(cl:ensure-generic-function 'is_last_chunk-val :lambda-list '(m))
(cl:defmethod is_last_chunk-val ((m <RequestNewPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:is_last_chunk-val is deprecated.  Use auto_smart_factory-srv:is_last_chunk instead.")
  (is_last_chunk m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestNewPath-response>) ostream)
  "Serializes a message object of type '<RequestNewPath-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'new_path_nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'new_path_nodes))
  (cl:let* ((signed (cl:slot-value msg 'main_path_length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_last_chunk) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestNewPath-response>) istream)
  "Deserializes a message object of type '<RequestNewPath-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'new_path_nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'new_path_nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'main_path_length) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_last_chunk) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestNewPath-response>)))
  "Returns string type for a service object of type '<RequestNewPath-response>"
  "auto_smart_factory/RequestNewPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestNewPath-response)))
  "Returns string type for a service object of type 'RequestNewPath-response"
  "auto_smart_factory/RequestNewPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestNewPath-response>)))
  "Returns md5sum for a message object of type '<RequestNewPath-response>"
  "fc441636b7a0cbdae9c6aa18043de91f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestNewPath-response)))
  "Returns md5sum for a message object of type 'RequestNewPath-response"
  "fc441636b7a0cbdae9c6aa18043de91f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestNewPath-response>)))
  "Returns full string definition for message of type '<RequestNewPath-response>"
  (cl:format cl:nil "~%geometry_msgs/Point[] new_path_nodes~%int32 main_path_length~%bool is_last_chunk~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestNewPath-response)))
  "Returns full string definition for message of type 'RequestNewPath-response"
  (cl:format cl:nil "~%geometry_msgs/Point[] new_path_nodes~%int32 main_path_length~%bool is_last_chunk~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestNewPath-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'new_path_nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestNewPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestNewPath-response
    (cl:cons ':new_path_nodes (new_path_nodes msg))
    (cl:cons ':main_path_length (main_path_length msg))
    (cl:cons ':is_last_chunk (is_last_chunk msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RequestNewPath)))
  'RequestNewPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RequestNewPath)))
  'RequestNewPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestNewPath)))
  "Returns string type for a service object of type '<RequestNewPath>"
  "auto_smart_factory/RequestNewPath")