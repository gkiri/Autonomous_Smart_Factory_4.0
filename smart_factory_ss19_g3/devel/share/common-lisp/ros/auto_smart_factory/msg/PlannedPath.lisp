; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude PlannedPath.msg.html

(cl:defclass <PlannedPath> (roslisp-msg-protocol:ros-message)
  ((agent_id
    :reader agent_id
    :initarg :agent_id
    :type cl:string
    :initform "")
   (Pl_path_nodes
    :reader Pl_path_nodes
    :initarg :Pl_path_nodes
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (time_to_nodes
    :reader time_to_nodes
    :initarg :time_to_nodes
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PlannedPath (<PlannedPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannedPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannedPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<PlannedPath> is deprecated: use auto_smart_factory-msg:PlannedPath instead.")))

(cl:ensure-generic-function 'agent_id-val :lambda-list '(m))
(cl:defmethod agent_id-val ((m <PlannedPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:agent_id-val is deprecated.  Use auto_smart_factory-msg:agent_id instead.")
  (agent_id m))

(cl:ensure-generic-function 'Pl_path_nodes-val :lambda-list '(m))
(cl:defmethod Pl_path_nodes-val ((m <PlannedPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:Pl_path_nodes-val is deprecated.  Use auto_smart_factory-msg:Pl_path_nodes instead.")
  (Pl_path_nodes m))

(cl:ensure-generic-function 'time_to_nodes-val :lambda-list '(m))
(cl:defmethod time_to_nodes-val ((m <PlannedPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:time_to_nodes-val is deprecated.  Use auto_smart_factory-msg:time_to_nodes instead.")
  (time_to_nodes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannedPath>) ostream)
  "Serializes a message object of type '<PlannedPath>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'agent_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'agent_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Pl_path_nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'Pl_path_nodes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'time_to_nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'time_to_nodes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannedPath>) istream)
  "Deserializes a message object of type '<PlannedPath>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agent_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'agent_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Pl_path_nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Pl_path_nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'time_to_nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'time_to_nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannedPath>)))
  "Returns string type for a message object of type '<PlannedPath>"
  "auto_smart_factory/PlannedPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannedPath)))
  "Returns string type for a message object of type 'PlannedPath"
  "auto_smart_factory/PlannedPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannedPath>)))
  "Returns md5sum for a message object of type '<PlannedPath>"
  "3b8ce9ba777d4182b126178af71ab240")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannedPath)))
  "Returns md5sum for a message object of type 'PlannedPath"
  "3b8ce9ba777d4182b126178af71ab240")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannedPath>)))
  "Returns full string definition for message of type '<PlannedPath>"
  (cl:format cl:nil "#Contains nodes planned path and time to reach those nodes~%#Contains array of planned path node and time to reach each node~%~%string agent_id~%~%int32[] Pl_path_nodes~%~%float64[] time_to_nodes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannedPath)))
  "Returns full string definition for message of type 'PlannedPath"
  (cl:format cl:nil "#Contains nodes planned path and time to reach those nodes~%#Contains array of planned path node and time to reach each node~%~%string agent_id~%~%int32[] Pl_path_nodes~%~%float64[] time_to_nodes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannedPath>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'agent_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Pl_path_nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'time_to_nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannedPath>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannedPath
    (cl:cons ':agent_id (agent_id msg))
    (cl:cons ':Pl_path_nodes (Pl_path_nodes msg))
    (cl:cons ':time_to_nodes (time_to_nodes msg))
))
