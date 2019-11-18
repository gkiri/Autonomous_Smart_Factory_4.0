; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude inputRequest-request.msg.html

(cl:defclass <inputRequest-request> (roslisp-msg-protocol:ros-message)
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
   (idInput
    :reader idInput
    :initarg :idInput
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (robot
    :reader robot
    :initarg :robot
    :type auto_smart_factory-msg:RobotConfiguration
    :initform (cl:make-instance 'auto_smart_factory-msg:RobotConfiguration)))
)

(cl:defclass inputRequest-request (<inputRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inputRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inputRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<inputRequest-request> is deprecated: use auto_smart_factory-srv:inputRequest-request instead.")))

(cl:ensure-generic-function 'posStart-val :lambda-list '(m))
(cl:defmethod posStart-val ((m <inputRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:posStart-val is deprecated.  Use auto_smart_factory-srv:posStart instead.")
  (posStart m))

(cl:ensure-generic-function 'idTrays-val :lambda-list '(m))
(cl:defmethod idTrays-val ((m <inputRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:idTrays-val is deprecated.  Use auto_smart_factory-srv:idTrays instead.")
  (idTrays m))

(cl:ensure-generic-function 'idInput-val :lambda-list '(m))
(cl:defmethod idInput-val ((m <inputRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:idInput-val is deprecated.  Use auto_smart_factory-srv:idInput instead.")
  (idInput m))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <inputRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:robot-val is deprecated.  Use auto_smart_factory-srv:robot instead.")
  (robot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inputRequest-request>) ostream)
  "Serializes a message object of type '<inputRequest-request>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'idInput))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'idInput))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inputRequest-request>) istream)
  "Deserializes a message object of type '<inputRequest-request>"
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
  (cl:setf (cl:slot-value msg 'idInput) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'idInput)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inputRequest-request>)))
  "Returns string type for a service object of type '<inputRequest-request>"
  "auto_smart_factory/inputRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inputRequest-request)))
  "Returns string type for a service object of type 'inputRequest-request"
  "auto_smart_factory/inputRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inputRequest-request>)))
  "Returns md5sum for a message object of type '<inputRequest-request>"
  "84b93cb25f9b147c760d7e90b220604b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inputRequest-request)))
  "Returns md5sum for a message object of type 'inputRequest-request"
  "84b93cb25f9b147c760d7e90b220604b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inputRequest-request>)))
  "Returns full string definition for message of type '<inputRequest-request>"
  (cl:format cl:nil "geometry_msgs/Point posStart~%uint32[] idTrays~%uint32[] idInput~%RobotConfiguration robot~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inputRequest-request)))
  "Returns full string definition for message of type 'inputRequest-request"
  (cl:format cl:nil "geometry_msgs/Point posStart~%uint32[] idTrays~%uint32[] idInput~%RobotConfiguration robot~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auto_smart_factory/RobotConfiguration~%# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inputRequest-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'posStart))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'idTrays) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'idInput) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inputRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'inputRequest-request
    (cl:cons ':posStart (posStart msg))
    (cl:cons ':idTrays (idTrays msg))
    (cl:cons ':idInput (idInput msg))
    (cl:cons ':robot (robot msg))
))
;//! \htmlinclude inputRequest-response.msg.html

(cl:defclass <inputRequest-response> (roslisp-msg-protocol:ros-message)
  ((pointsToInput
    :reader pointsToInput
    :initarg :pointsToInput
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (pointsToTray
    :reader pointsToTray
    :initarg :pointsToTray
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

(cl:defclass inputRequest-response (<inputRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inputRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inputRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<inputRequest-response> is deprecated: use auto_smart_factory-srv:inputRequest-response instead.")))

(cl:ensure-generic-function 'pointsToInput-val :lambda-list '(m))
(cl:defmethod pointsToInput-val ((m <inputRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:pointsToInput-val is deprecated.  Use auto_smart_factory-srv:pointsToInput instead.")
  (pointsToInput m))

(cl:ensure-generic-function 'pointsToTray-val :lambda-list '(m))
(cl:defmethod pointsToTray-val ((m <inputRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:pointsToTray-val is deprecated.  Use auto_smart_factory-srv:pointsToTray instead.")
  (pointsToTray m))

(cl:ensure-generic-function 'idBest-val :lambda-list '(m))
(cl:defmethod idBest-val ((m <inputRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:idBest-val is deprecated.  Use auto_smart_factory-srv:idBest instead.")
  (idBest m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <inputRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:length-val is deprecated.  Use auto_smart_factory-srv:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inputRequest-response>) ostream)
  "Serializes a message object of type '<inputRequest-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pointsToInput))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pointsToInput))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pointsToTray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pointsToTray))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inputRequest-response>) istream)
  "Deserializes a message object of type '<inputRequest-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pointsToInput) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pointsToInput)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inputRequest-response>)))
  "Returns string type for a service object of type '<inputRequest-response>"
  "auto_smart_factory/inputRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inputRequest-response)))
  "Returns string type for a service object of type 'inputRequest-response"
  "auto_smart_factory/inputRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inputRequest-response>)))
  "Returns md5sum for a message object of type '<inputRequest-response>"
  "84b93cb25f9b147c760d7e90b220604b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inputRequest-response)))
  "Returns md5sum for a message object of type 'inputRequest-response"
  "84b93cb25f9b147c760d7e90b220604b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inputRequest-response>)))
  "Returns full string definition for message of type '<inputRequest-response>"
  (cl:format cl:nil "geometry_msgs/Point[] pointsToInput~%geometry_msgs/Point[] pointsToTray~%uint32 idBest~%float64 length~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inputRequest-response)))
  "Returns full string definition for message of type 'inputRequest-response"
  (cl:format cl:nil "geometry_msgs/Point[] pointsToInput~%geometry_msgs/Point[] pointsToTray~%uint32 idBest~%float64 length~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inputRequest-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pointsToInput) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pointsToTray) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inputRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'inputRequest-response
    (cl:cons ':pointsToInput (pointsToInput msg))
    (cl:cons ':pointsToTray (pointsToTray msg))
    (cl:cons ':idBest (idBest msg))
    (cl:cons ':length (length msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'inputRequest)))
  'inputRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'inputRequest)))
  'inputRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inputRequest)))
  "Returns string type for a service object of type '<inputRequest>"
  "auto_smart_factory/inputRequest")