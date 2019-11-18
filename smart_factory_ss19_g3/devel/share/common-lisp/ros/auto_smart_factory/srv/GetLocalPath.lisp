; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude GetLocalPath-request.msg.html

(cl:defclass <GetLocalPath-request> (roslisp-msg-protocol:ros-message)
  ((agent_id
    :reader agent_id
    :initarg :agent_id
    :type cl:string
    :initform "")
   (robots_path
    :reader robots_path
    :initarg :robots_path
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (robot_config
    :reader robot_config
    :initarg :robot_config
    :type auto_smart_factory-msg:RobotConfiguration
    :initform (cl:make-instance 'auto_smart_factory-msg:RobotConfiguration))
   (next_position
    :reader next_position
    :initarg :next_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (goal_position
    :reader goal_position
    :initarg :goal_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (robot_position
    :reader robot_position
    :initarg :robot_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass GetLocalPath-request (<GetLocalPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocalPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocalPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetLocalPath-request> is deprecated: use auto_smart_factory-srv:GetLocalPath-request instead.")))

(cl:ensure-generic-function 'agent_id-val :lambda-list '(m))
(cl:defmethod agent_id-val ((m <GetLocalPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:agent_id-val is deprecated.  Use auto_smart_factory-srv:agent_id instead.")
  (agent_id m))

(cl:ensure-generic-function 'robots_path-val :lambda-list '(m))
(cl:defmethod robots_path-val ((m <GetLocalPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:robots_path-val is deprecated.  Use auto_smart_factory-srv:robots_path instead.")
  (robots_path m))

(cl:ensure-generic-function 'robot_config-val :lambda-list '(m))
(cl:defmethod robot_config-val ((m <GetLocalPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:robot_config-val is deprecated.  Use auto_smart_factory-srv:robot_config instead.")
  (robot_config m))

(cl:ensure-generic-function 'next_position-val :lambda-list '(m))
(cl:defmethod next_position-val ((m <GetLocalPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:next_position-val is deprecated.  Use auto_smart_factory-srv:next_position instead.")
  (next_position m))

(cl:ensure-generic-function 'goal_position-val :lambda-list '(m))
(cl:defmethod goal_position-val ((m <GetLocalPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:goal_position-val is deprecated.  Use auto_smart_factory-srv:goal_position instead.")
  (goal_position m))

(cl:ensure-generic-function 'robot_position-val :lambda-list '(m))
(cl:defmethod robot_position-val ((m <GetLocalPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:robot_position-val is deprecated.  Use auto_smart_factory-srv:robot_position instead.")
  (robot_position m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <GetLocalPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:obstacles-val is deprecated.  Use auto_smart_factory-srv:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocalPath-request>) ostream)
  "Serializes a message object of type '<GetLocalPath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'agent_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'agent_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robots_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robots_path))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_config) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'next_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_position) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocalPath-request>) istream)
  "Deserializes a message object of type '<GetLocalPath-request>"
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
  (cl:setf (cl:slot-value msg 'robots_path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robots_path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_config) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'next_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_position) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocalPath-request>)))
  "Returns string type for a service object of type '<GetLocalPath-request>"
  "auto_smart_factory/GetLocalPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocalPath-request)))
  "Returns string type for a service object of type 'GetLocalPath-request"
  "auto_smart_factory/GetLocalPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocalPath-request>)))
  "Returns md5sum for a message object of type '<GetLocalPath-request>"
  "24de2ce6824365cb99b622cce140382d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocalPath-request)))
  "Returns md5sum for a message object of type 'GetLocalPath-request"
  "24de2ce6824365cb99b622cce140382d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocalPath-request>)))
  "Returns full string definition for message of type '<GetLocalPath-request>"
  (cl:format cl:nil "string agent_id~%geometry_msgs/Point[] robots_path~%RobotConfiguration robot_config~%geometry_msgs/Point next_position~%geometry_msgs/Point goal_position~%geometry_msgs/Point robot_position~%~%~%geometry_msgs/Point[] obstacles~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocalPath-request)))
  "Returns full string definition for message of type 'GetLocalPath-request"
  (cl:format cl:nil "string agent_id~%geometry_msgs/Point[] robots_path~%RobotConfiguration robot_config~%geometry_msgs/Point next_position~%geometry_msgs/Point goal_position~%geometry_msgs/Point robot_position~%~%~%geometry_msgs/Point[] obstacles~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocalPath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'agent_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robots_path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_config))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'next_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_position))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocalPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocalPath-request
    (cl:cons ':agent_id (agent_id msg))
    (cl:cons ':robots_path (robots_path msg))
    (cl:cons ':robot_config (robot_config msg))
    (cl:cons ':next_position (next_position msg))
    (cl:cons ':goal_position (goal_position msg))
    (cl:cons ':robot_position (robot_position msg))
    (cl:cons ':obstacles (obstacles msg))
))
;//! \htmlinclude GetLocalPath-response.msg.html

(cl:defclass <GetLocalPath-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetLocalPath-response (<GetLocalPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocalPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocalPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetLocalPath-response> is deprecated: use auto_smart_factory-srv:GetLocalPath-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <GetLocalPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:path-val is deprecated.  Use auto_smart_factory-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <GetLocalPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:length-val is deprecated.  Use auto_smart_factory-srv:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocalPath-response>) ostream)
  "Serializes a message object of type '<GetLocalPath-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocalPath-response>) istream)
  "Deserializes a message object of type '<GetLocalPath-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocalPath-response>)))
  "Returns string type for a service object of type '<GetLocalPath-response>"
  "auto_smart_factory/GetLocalPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocalPath-response)))
  "Returns string type for a service object of type 'GetLocalPath-response"
  "auto_smart_factory/GetLocalPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocalPath-response>)))
  "Returns md5sum for a message object of type '<GetLocalPath-response>"
  "24de2ce6824365cb99b622cce140382d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocalPath-response)))
  "Returns md5sum for a message object of type 'GetLocalPath-response"
  "24de2ce6824365cb99b622cce140382d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocalPath-response>)))
  "Returns full string definition for message of type '<GetLocalPath-response>"
  (cl:format cl:nil "geometry_msgs/Point[] path~%float64 length~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocalPath-response)))
  "Returns full string definition for message of type 'GetLocalPath-response"
  (cl:format cl:nil "geometry_msgs/Point[] path~%float64 length~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocalPath-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocalPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocalPath-response
    (cl:cons ':path (path msg))
    (cl:cons ':length (length msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLocalPath)))
  'GetLocalPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLocalPath)))
  'GetLocalPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocalPath)))
  "Returns string type for a service object of type '<GetLocalPath>"
  "auto_smart_factory/GetLocalPath")