; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude bestGoal-request.msg.html

(cl:defclass <bestGoal-request> (roslisp-msg-protocol:ros-message)
  ((posStart
    :reader posStart
    :initarg :posStart
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (idTargets
    :reader idTargets
    :initarg :idTargets
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (robot
    :reader robot
    :initarg :robot
    :type auto_smart_factory-msg:RobotConfiguration
    :initform (cl:make-instance 'auto_smart_factory-msg:RobotConfiguration)))
)

(cl:defclass bestGoal-request (<bestGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bestGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bestGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<bestGoal-request> is deprecated: use auto_smart_factory-srv:bestGoal-request instead.")))

(cl:ensure-generic-function 'posStart-val :lambda-list '(m))
(cl:defmethod posStart-val ((m <bestGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:posStart-val is deprecated.  Use auto_smart_factory-srv:posStart instead.")
  (posStart m))

(cl:ensure-generic-function 'idTargets-val :lambda-list '(m))
(cl:defmethod idTargets-val ((m <bestGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:idTargets-val is deprecated.  Use auto_smart_factory-srv:idTargets instead.")
  (idTargets m))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <bestGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:robot-val is deprecated.  Use auto_smart_factory-srv:robot instead.")
  (robot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bestGoal-request>) ostream)
  "Serializes a message object of type '<bestGoal-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'posStart) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'idTargets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'idTargets))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bestGoal-request>) istream)
  "Deserializes a message object of type '<bestGoal-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'posStart) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'idTargets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'idTargets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bestGoal-request>)))
  "Returns string type for a service object of type '<bestGoal-request>"
  "auto_smart_factory/bestGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bestGoal-request)))
  "Returns string type for a service object of type 'bestGoal-request"
  "auto_smart_factory/bestGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bestGoal-request>)))
  "Returns md5sum for a message object of type '<bestGoal-request>"
  "5663ef057acd0d4321cbcd1579606742")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bestGoal-request)))
  "Returns md5sum for a message object of type 'bestGoal-request"
  "5663ef057acd0d4321cbcd1579606742")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bestGoal-request>)))
  "Returns full string definition for message of type '<bestGoal-request>"
  (cl:format cl:nil "geometry_msgs/Point posStart~%uint32[] idTargets~%RobotConfiguration robot~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bestGoal-request)))
  "Returns full string definition for message of type 'bestGoal-request"
  (cl:format cl:nil "geometry_msgs/Point posStart~%uint32[] idTargets~%RobotConfiguration robot~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bestGoal-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'posStart))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'idTargets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bestGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'bestGoal-request
    (cl:cons ':posStart (posStart msg))
    (cl:cons ':idTargets (idTargets msg))
    (cl:cons ':robot (robot msg))
))
;//! \htmlinclude bestGoal-response.msg.html

(cl:defclass <bestGoal-response> (roslisp-msg-protocol:ros-message)
  ((resultPoints
    :reader resultPoints
    :initarg :resultPoints
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (idBestTray
    :reader idBestTray
    :initarg :idBestTray
    :type cl:integer
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass bestGoal-response (<bestGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bestGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bestGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<bestGoal-response> is deprecated: use auto_smart_factory-srv:bestGoal-response instead.")))

(cl:ensure-generic-function 'resultPoints-val :lambda-list '(m))
(cl:defmethod resultPoints-val ((m <bestGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:resultPoints-val is deprecated.  Use auto_smart_factory-srv:resultPoints instead.")
  (resultPoints m))

(cl:ensure-generic-function 'idBestTray-val :lambda-list '(m))
(cl:defmethod idBestTray-val ((m <bestGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:idBestTray-val is deprecated.  Use auto_smart_factory-srv:idBestTray instead.")
  (idBestTray m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <bestGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:length-val is deprecated.  Use auto_smart_factory-srv:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bestGoal-response>) ostream)
  "Serializes a message object of type '<bestGoal-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'resultPoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'resultPoints))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idBestTray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'idBestTray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'idBestTray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'idBestTray)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bestGoal-response>) istream)
  "Deserializes a message object of type '<bestGoal-response>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idBestTray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'idBestTray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'idBestTray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'idBestTray)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bestGoal-response>)))
  "Returns string type for a service object of type '<bestGoal-response>"
  "auto_smart_factory/bestGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bestGoal-response)))
  "Returns string type for a service object of type 'bestGoal-response"
  "auto_smart_factory/bestGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bestGoal-response>)))
  "Returns md5sum for a message object of type '<bestGoal-response>"
  "5663ef057acd0d4321cbcd1579606742")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bestGoal-response)))
  "Returns md5sum for a message object of type 'bestGoal-response"
  "5663ef057acd0d4321cbcd1579606742")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bestGoal-response>)))
  "Returns full string definition for message of type '<bestGoal-response>"
  (cl:format cl:nil "geometry_msgs/Point[] resultPoints~%uint32 idBestTray~%float64 length~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bestGoal-response)))
  "Returns full string definition for message of type 'bestGoal-response"
  (cl:format cl:nil "geometry_msgs/Point[] resultPoints~%uint32 idBestTray~%float64 length~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bestGoal-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'resultPoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bestGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'bestGoal-response
    (cl:cons ':resultPoints (resultPoints msg))
    (cl:cons ':idBestTray (idBestTray msg))
    (cl:cons ':length (length msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'bestGoal)))
  'bestGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'bestGoal)))
  'bestGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bestGoal)))
  "Returns string type for a service object of type '<bestGoal>"
  "auto_smart_factory/bestGoal")