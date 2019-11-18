; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude MoveGripper-request.msg.html

(cl:defclass <MoveGripper-request> (roslisp-msg-protocol:ros-message)
  ((gripper_id
    :reader gripper_id
    :initarg :gripper_id
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveGripper-request (<MoveGripper-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveGripper-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveGripper-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<MoveGripper-request> is deprecated: use auto_smart_factory-srv:MoveGripper-request instead.")))

(cl:ensure-generic-function 'gripper_id-val :lambda-list '(m))
(cl:defmethod gripper_id-val ((m <MoveGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:gripper_id-val is deprecated.  Use auto_smart_factory-srv:gripper_id instead.")
  (gripper_id m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <MoveGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:x-val is deprecated.  Use auto_smart_factory-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <MoveGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:y-val is deprecated.  Use auto_smart_factory-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <MoveGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:z-val is deprecated.  Use auto_smart_factory-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveGripper-request>) ostream)
  "Serializes a message object of type '<MoveGripper-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gripper_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gripper_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveGripper-request>) istream)
  "Deserializes a message object of type '<MoveGripper-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gripper_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gripper_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveGripper-request>)))
  "Returns string type for a service object of type '<MoveGripper-request>"
  "auto_smart_factory/MoveGripperRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveGripper-request)))
  "Returns string type for a service object of type 'MoveGripper-request"
  "auto_smart_factory/MoveGripperRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveGripper-request>)))
  "Returns md5sum for a message object of type '<MoveGripper-request>"
  "9584f4c3f08b52e2a84d696a73ba3124")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveGripper-request)))
  "Returns md5sum for a message object of type 'MoveGripper-request"
  "9584f4c3f08b52e2a84d696a73ba3124")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveGripper-request>)))
  "Returns full string definition for message of type '<MoveGripper-request>"
  (cl:format cl:nil "string gripper_id~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveGripper-request)))
  "Returns full string definition for message of type 'MoveGripper-request"
  (cl:format cl:nil "string gripper_id~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveGripper-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'gripper_id))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveGripper-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveGripper-request
    (cl:cons ':gripper_id (gripper_id msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
;//! \htmlinclude MoveGripper-response.msg.html

(cl:defclass <MoveGripper-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveGripper-response (<MoveGripper-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveGripper-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveGripper-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<MoveGripper-response> is deprecated: use auto_smart_factory-srv:MoveGripper-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MoveGripper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveGripper-response>) ostream)
  "Serializes a message object of type '<MoveGripper-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveGripper-response>) istream)
  "Deserializes a message object of type '<MoveGripper-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveGripper-response>)))
  "Returns string type for a service object of type '<MoveGripper-response>"
  "auto_smart_factory/MoveGripperResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveGripper-response)))
  "Returns string type for a service object of type 'MoveGripper-response"
  "auto_smart_factory/MoveGripperResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveGripper-response>)))
  "Returns md5sum for a message object of type '<MoveGripper-response>"
  "9584f4c3f08b52e2a84d696a73ba3124")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveGripper-response)))
  "Returns md5sum for a message object of type 'MoveGripper-response"
  "9584f4c3f08b52e2a84d696a73ba3124")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveGripper-response>)))
  "Returns full string definition for message of type '<MoveGripper-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveGripper-response)))
  "Returns full string definition for message of type 'MoveGripper-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveGripper-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveGripper-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveGripper-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveGripper)))
  'MoveGripper-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveGripper)))
  'MoveGripper-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveGripper)))
  "Returns string type for a service object of type '<MoveGripper>"
  "auto_smart_factory/MoveGripper")