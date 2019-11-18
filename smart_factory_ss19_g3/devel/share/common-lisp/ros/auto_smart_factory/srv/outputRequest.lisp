; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude outputRequest-request.msg.html

(cl:defclass <outputRequest-request> (roslisp-msg-protocol:ros-message)
  ((posStart
    :reader posStart
    :initarg :posStart
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (idTrays
    :reader idTrays
    :initarg :idTrays
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (idGoal
    :reader idGoal
    :initarg :idGoal
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (robot
    :reader robot
    :initarg :robot
    :type auto_smart_factory-msg:RobotConfiguration
    :initform (cl:make-instance 'auto_smart_factory-msg:RobotConfiguration)))
)

(cl:defclass outputRequest-request (<outputRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <outputRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'outputRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<outputRequest-request> is deprecated: use auto_smart_factory-srv:outputRequest-request instead.")))

(cl:ensure-generic-function 'posStart-val :lambda-list '(m))
(cl:defmethod posStart-val ((m <outputRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:posStart-val is deprecated.  Use auto_smart_factory-srv:posStart instead.")
  (posStart m))

(cl:ensure-generic-function 'idTrays-val :lambda-list '(m))
(cl:defmethod idTrays-val ((m <outputRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:idTrays-val is deprecated.  Use auto_smart_factory-srv:idTrays instead.")
  (idTrays m))

(cl:ensure-generic-function 'idGoal-val :lambda-list '(m))
(cl:defmethod idGoal-val ((m <outputRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:idGoal-val is deprecated.  Use auto_smart_factory-srv:idGoal instead.")
  (idGoal m))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <outputRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:robot-val is deprecated.  Use auto_smart_factory-srv:robot instead.")
  (robot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <outputRequest-request>) ostream)
  "Serializes a message object of type '<outputRequest-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'posStart) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'idTrays))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'idTrays))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'idGoal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'idGoal))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <outputRequest-request>) istream)
  "Deserializes a message object of type '<outputRequest-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'posStart) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'idTrays) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'idTrays)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'idGoal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'idGoal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<outputRequest-request>)))
  "Returns string type for a service object of type '<outputRequest-request>"
  "auto_smart_factory/outputRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'outputRequest-request)))
  "Returns string type for a service object of type 'outputRequest-request"
  "auto_smart_factory/outputRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<outputRequest-request>)))
  "Returns md5sum for a message object of type '<outputRequest-request>"
  "fe895386dfaeb1d8df370061246b0fbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'outputRequest-request)))
  "Returns md5sum for a message object of type 'outputRequest-request"
  "fe895386dfaeb1d8df370061246b0fbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<outputRequest-request>)))
  "Returns full string definition for message of type '<outputRequest-request>"
  (cl:format cl:nil "geometry_msgs/Point posStart~%uint32[] idTrays~%uint32[] idGoal~%RobotConfiguration robot~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'outputRequest-request)))
  "Returns full string definition for message of type 'outputRequest-request"
  (cl:format cl:nil "geometry_msgs/Point posStart~%uint32[] idTrays~%uint32[] idGoal~%RobotConfiguration robot~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <outputRequest-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'posStart))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'idTrays) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'idGoal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <outputRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'outputRequest-request
    (cl:cons ':posStart (posStart msg))
    (cl:cons ':idTrays (idTrays msg))
    (cl:cons ':idGoal (idGoal msg))
    (cl:cons ':robot (robot msg))
))
;//! \htmlinclude outputRequest-response.msg.html

(cl:defclass <outputRequest-response> (roslisp-msg-protocol:ros-message)
  ((pointsToTray
    :reader pointsToTray
    :initarg :pointsToTray
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (pointsToOutput
    :reader pointsToOutput
    :initarg :pointsToOutput
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (idBest
    :reader idBest
    :initarg :idBest
    :type cl:integer
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass outputRequest-response (<outputRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <outputRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'outputRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<outputRequest-response> is deprecated: use auto_smart_factory-srv:outputRequest-response instead.")))

(cl:ensure-generic-function 'pointsToTray-val :lambda-list '(m))
(cl:defmethod pointsToTray-val ((m <outputRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:pointsToTray-val is deprecated.  Use auto_smart_factory-srv:pointsToTray instead.")
  (pointsToTray m))

(cl:ensure-generic-function 'pointsToOutput-val :lambda-list '(m))
(cl:defmethod pointsToOutput-val ((m <outputRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:pointsToOutput-val is deprecated.  Use auto_smart_factory-srv:pointsToOutput instead.")
  (pointsToOutput m))

(cl:ensure-generic-function 'idBest-val :lambda-list '(m))
(cl:defmethod idBest-val ((m <outputRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:idBest-val is deprecated.  Use auto_smart_factory-srv:idBest instead.")
  (idBest m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <outputRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:length-val is deprecated.  Use auto_smart_factory-srv:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <outputRequest-response>) ostream)
  "Serializes a message object of type '<outputRequest-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pointsToTray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pointsToTray))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pointsToOutput))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pointsToOutput))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idBest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'idBest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'idBest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'idBest)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <outputRequest-response>) istream)
  "Deserializes a message object of type '<outputRequest-response>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pointsToOutput) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pointsToOutput)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idBest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'idBest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'idBest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'idBest)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<outputRequest-response>)))
  "Returns string type for a service object of type '<outputRequest-response>"
  "auto_smart_factory/outputRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'outputRequest-response)))
  "Returns string type for a service object of type 'outputRequest-response"
  "auto_smart_factory/outputRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<outputRequest-response>)))
  "Returns md5sum for a message object of type '<outputRequest-response>"
  "fe895386dfaeb1d8df370061246b0fbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'outputRequest-response)))
  "Returns md5sum for a message object of type 'outputRequest-response"
  "fe895386dfaeb1d8df370061246b0fbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<outputRequest-response>)))
  "Returns full string definition for message of type '<outputRequest-response>"
  (cl:format cl:nil "geometry_msgs/Point[] pointsToTray~%geometry_msgs/Point[] pointsToOutput~%uint32 idBest~%float64 length~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'outputRequest-response)))
  "Returns full string definition for message of type 'outputRequest-response"
  (cl:format cl:nil "geometry_msgs/Point[] pointsToTray~%geometry_msgs/Point[] pointsToOutput~%uint32 idBest~%float64 length~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <outputRequest-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pointsToTray) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pointsToOutput) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <outputRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'outputRequest-response
    (cl:cons ':pointsToTray (pointsToTray msg))
    (cl:cons ':pointsToOutput (pointsToOutput msg))
    (cl:cons ':idBest (idBest msg))
    (cl:cons ':length (length msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'outputRequest)))
  'outputRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'outputRequest)))
  'outputRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'outputRequest)))
  "Returns string type for a service object of type '<outputRequest>"
  "auto_smart_factory/outputRequest")