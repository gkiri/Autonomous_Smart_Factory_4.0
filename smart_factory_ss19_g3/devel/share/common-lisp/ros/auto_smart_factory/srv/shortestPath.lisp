; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude shortestPath-request.msg.html

(cl:defclass <shortestPath-request> (roslisp-msg-protocol:ros-message)
  ((p1
    :reader p1
    :initarg :p1
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (p2
    :reader p2
    :initarg :p2
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (robot
    :reader robot
    :initarg :robot
    :type auto_smart_factory-msg:RobotConfiguration
    :initform (cl:make-instance 'auto_smart_factory-msg:RobotConfiguration)))
)

(cl:defclass shortestPath-request (<shortestPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <shortestPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'shortestPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<shortestPath-request> is deprecated: use auto_smart_factory-srv:shortestPath-request instead.")))

(cl:ensure-generic-function 'p1-val :lambda-list '(m))
(cl:defmethod p1-val ((m <shortestPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:p1-val is deprecated.  Use auto_smart_factory-srv:p1 instead.")
  (p1 m))

(cl:ensure-generic-function 'p2-val :lambda-list '(m))
(cl:defmethod p2-val ((m <shortestPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:p2-val is deprecated.  Use auto_smart_factory-srv:p2 instead.")
  (p2 m))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <shortestPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:robot-val is deprecated.  Use auto_smart_factory-srv:robot instead.")
  (robot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <shortestPath-request>) ostream)
  "Serializes a message object of type '<shortestPath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <shortestPath-request>) istream)
  "Deserializes a message object of type '<shortestPath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<shortestPath-request>)))
  "Returns string type for a service object of type '<shortestPath-request>"
  "auto_smart_factory/shortestPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'shortestPath-request)))
  "Returns string type for a service object of type 'shortestPath-request"
  "auto_smart_factory/shortestPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<shortestPath-request>)))
  "Returns md5sum for a message object of type '<shortestPath-request>"
  "e02be1ddd821db1040e02af717ecac84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'shortestPath-request)))
  "Returns md5sum for a message object of type 'shortestPath-request"
  "e02be1ddd821db1040e02af717ecac84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<shortestPath-request>)))
  "Returns full string definition for message of type '<shortestPath-request>"
  (cl:format cl:nil "geometry_msgs/Point p1~%geometry_msgs/Point p2~%RobotConfiguration robot~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'shortestPath-request)))
  "Returns full string definition for message of type 'shortestPath-request"
  (cl:format cl:nil "geometry_msgs/Point p1~%geometry_msgs/Point p2~%RobotConfiguration robot~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <shortestPath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <shortestPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'shortestPath-request
    (cl:cons ':p1 (p1 msg))
    (cl:cons ':p2 (p2 msg))
    (cl:cons ':robot (robot msg))
))
;//! \htmlinclude shortestPath-response.msg.html

(cl:defclass <shortestPath-response> (roslisp-msg-protocol:ros-message)
  ((resultPoints
    :reader resultPoints
    :initarg :resultPoints
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass shortestPath-response (<shortestPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <shortestPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'shortestPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<shortestPath-response> is deprecated: use auto_smart_factory-srv:shortestPath-response instead.")))

(cl:ensure-generic-function 'resultPoints-val :lambda-list '(m))
(cl:defmethod resultPoints-val ((m <shortestPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:resultPoints-val is deprecated.  Use auto_smart_factory-srv:resultPoints instead.")
  (resultPoints m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <shortestPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:length-val is deprecated.  Use auto_smart_factory-srv:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <shortestPath-response>) ostream)
  "Serializes a message object of type '<shortestPath-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'resultPoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'resultPoints))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <shortestPath-response>) istream)
  "Deserializes a message object of type '<shortestPath-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'resultPoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'resultPoints)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<shortestPath-response>)))
  "Returns string type for a service object of type '<shortestPath-response>"
  "auto_smart_factory/shortestPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'shortestPath-response)))
  "Returns string type for a service object of type 'shortestPath-response"
  "auto_smart_factory/shortestPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<shortestPath-response>)))
  "Returns md5sum for a message object of type '<shortestPath-response>"
  "e02be1ddd821db1040e02af717ecac84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'shortestPath-response)))
  "Returns md5sum for a message object of type 'shortestPath-response"
  "e02be1ddd821db1040e02af717ecac84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<shortestPath-response>)))
  "Returns full string definition for message of type '<shortestPath-response>"
  (cl:format cl:nil "geometry_msgs/Point[] resultPoints~%float64 length~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'shortestPath-response)))
  "Returns full string definition for message of type 'shortestPath-response"
  (cl:format cl:nil "geometry_msgs/Point[] resultPoints~%float64 length~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <shortestPath-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'resultPoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <shortestPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'shortestPath-response
    (cl:cons ':resultPoints (resultPoints msg))
    (cl:cons ':length (length msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'shortestPath)))
  'shortestPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'shortestPath)))
  'shortestPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'shortestPath)))
  "Returns string type for a service object of type '<shortestPath>"
  "auto_smart_factory/shortestPath")