; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude localPath-request.msg.html

(cl:defclass <localPath-request> (roslisp-msg-protocol:ros-message)
  ((trayID
    :reader trayID
    :initarg :trayID
    :type cl:integer
    :initform 0)
   (obstacleLeft
    :reader obstacleLeft
    :initarg :obstacleLeft
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (obstacleFront
    :reader obstacleFront
    :initarg :obstacleFront
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (obstacleRight
    :reader obstacleRight
    :initarg :obstacleRight
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (robot
    :reader robot
    :initarg :robot
    :type auto_smart_factory-msg:RobotConfiguration
    :initform (cl:make-instance 'auto_smart_factory-msg:RobotConfiguration)))
)

(cl:defclass localPath-request (<localPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <localPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'localPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<localPath-request> is deprecated: use auto_smart_factory-srv:localPath-request instead.")))

(cl:ensure-generic-function 'trayID-val :lambda-list '(m))
(cl:defmethod trayID-val ((m <localPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:trayID-val is deprecated.  Use auto_smart_factory-srv:trayID instead.")
  (trayID m))

(cl:ensure-generic-function 'obstacleLeft-val :lambda-list '(m))
(cl:defmethod obstacleLeft-val ((m <localPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:obstacleLeft-val is deprecated.  Use auto_smart_factory-srv:obstacleLeft instead.")
  (obstacleLeft m))

(cl:ensure-generic-function 'obstacleFront-val :lambda-list '(m))
(cl:defmethod obstacleFront-val ((m <localPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:obstacleFront-val is deprecated.  Use auto_smart_factory-srv:obstacleFront instead.")
  (obstacleFront m))

(cl:ensure-generic-function 'obstacleRight-val :lambda-list '(m))
(cl:defmethod obstacleRight-val ((m <localPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:obstacleRight-val is deprecated.  Use auto_smart_factory-srv:obstacleRight instead.")
  (obstacleRight m))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <localPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:robot-val is deprecated.  Use auto_smart_factory-srv:robot instead.")
  (robot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <localPath-request>) ostream)
  "Serializes a message object of type '<localPath-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trayID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trayID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trayID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trayID)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacleLeft) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacleFront) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacleRight) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <localPath-request>) istream)
  "Deserializes a message object of type '<localPath-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trayID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trayID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trayID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trayID)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacleLeft) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacleFront) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacleRight) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<localPath-request>)))
  "Returns string type for a service object of type '<localPath-request>"
  "auto_smart_factory/localPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'localPath-request)))
  "Returns string type for a service object of type 'localPath-request"
  "auto_smart_factory/localPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<localPath-request>)))
  "Returns md5sum for a message object of type '<localPath-request>"
  "37b8d65f792389d92caeae306153ccb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'localPath-request)))
  "Returns md5sum for a message object of type 'localPath-request"
  "37b8d65f792389d92caeae306153ccb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<localPath-request>)))
  "Returns full string definition for message of type '<localPath-request>"
  (cl:format cl:nil "uint32 trayID~%geometry_msgs/Point obstacleLeft~%geometry_msgs/Point obstacleFront~%geometry_msgs/Point obstacleRight~%RobotConfiguration robot~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'localPath-request)))
  "Returns full string definition for message of type 'localPath-request"
  (cl:format cl:nil "uint32 trayID~%geometry_msgs/Point obstacleLeft~%geometry_msgs/Point obstacleFront~%geometry_msgs/Point obstacleRight~%RobotConfiguration robot~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <localPath-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacleLeft))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacleFront))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacleRight))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <localPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'localPath-request
    (cl:cons ':trayID (trayID msg))
    (cl:cons ':obstacleLeft (obstacleLeft msg))
    (cl:cons ':obstacleFront (obstacleFront msg))
    (cl:cons ':obstacleRight (obstacleRight msg))
    (cl:cons ':robot (robot msg))
))
;//! \htmlinclude localPath-response.msg.html

(cl:defclass <localPath-response> (roslisp-msg-protocol:ros-message)
  ((pointsToTray
    :reader pointsToTray
    :initarg :pointsToTray
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass localPath-response (<localPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <localPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'localPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<localPath-response> is deprecated: use auto_smart_factory-srv:localPath-response instead.")))

(cl:ensure-generic-function 'pointsToTray-val :lambda-list '(m))
(cl:defmethod pointsToTray-val ((m <localPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:pointsToTray-val is deprecated.  Use auto_smart_factory-srv:pointsToTray instead.")
  (pointsToTray m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <localPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:length-val is deprecated.  Use auto_smart_factory-srv:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <localPath-response>) ostream)
  "Serializes a message object of type '<localPath-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pointsToTray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pointsToTray))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <localPath-response>) istream)
  "Deserializes a message object of type '<localPath-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pointsToTray) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pointsToTray)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<localPath-response>)))
  "Returns string type for a service object of type '<localPath-response>"
  "auto_smart_factory/localPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'localPath-response)))
  "Returns string type for a service object of type 'localPath-response"
  "auto_smart_factory/localPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<localPath-response>)))
  "Returns md5sum for a message object of type '<localPath-response>"
  "37b8d65f792389d92caeae306153ccb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'localPath-response)))
  "Returns md5sum for a message object of type 'localPath-response"
  "37b8d65f792389d92caeae306153ccb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<localPath-response>)))
  "Returns full string definition for message of type '<localPath-response>"
  (cl:format cl:nil "geometry_msgs/Point[] pointsToTray~%float64 length~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'localPath-response)))
  "Returns full string definition for message of type 'localPath-response"
  (cl:format cl:nil "geometry_msgs/Point[] pointsToTray~%float64 length~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <localPath-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pointsToTray) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <localPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'localPath-response
    (cl:cons ':pointsToTray (pointsToTray msg))
    (cl:cons ':length (length msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'localPath)))
  'localPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'localPath)))
  'localPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'localPath)))
  "Returns string type for a service object of type '<localPath>"
  "auto_smart_factory/localPath")