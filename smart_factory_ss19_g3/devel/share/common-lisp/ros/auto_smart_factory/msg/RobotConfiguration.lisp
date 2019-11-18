; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude RobotConfiguration.msg.html

(cl:defclass <RobotConfiguration> (roslisp-msg-protocol:ros-message)
  ((type_name
    :reader type_name
    :initarg :type_name
    :type cl:string
    :initform "")
   (charging_rate
    :reader charging_rate
    :initarg :charging_rate
    :type cl:float
    :initform 0.0)
   (discharging_rate
    :reader discharging_rate
    :initarg :discharging_rate
    :type cl:float
    :initform 0.0)
   (min_linear_vel
    :reader min_linear_vel
    :initarg :min_linear_vel
    :type cl:float
    :initform 0.0)
   (max_linear_vel
    :reader max_linear_vel
    :initarg :max_linear_vel
    :type cl:float
    :initform 0.0)
   (max_angular_vel
    :reader max_angular_vel
    :initarg :max_angular_vel
    :type cl:float
    :initform 0.0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (max_load
    :reader max_load
    :initarg :max_load
    :type cl:float
    :initform 0.0))
)

(cl:defclass RobotConfiguration (<RobotConfiguration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotConfiguration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotConfiguration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<RobotConfiguration> is deprecated: use auto_smart_factory-msg:RobotConfiguration instead.")))

(cl:ensure-generic-function 'type_name-val :lambda-list '(m))
(cl:defmethod type_name-val ((m <RobotConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:type_name-val is deprecated.  Use auto_smart_factory-msg:type_name instead.")
  (type_name m))

(cl:ensure-generic-function 'charging_rate-val :lambda-list '(m))
(cl:defmethod charging_rate-val ((m <RobotConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:charging_rate-val is deprecated.  Use auto_smart_factory-msg:charging_rate instead.")
  (charging_rate m))

(cl:ensure-generic-function 'discharging_rate-val :lambda-list '(m))
(cl:defmethod discharging_rate-val ((m <RobotConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:discharging_rate-val is deprecated.  Use auto_smart_factory-msg:discharging_rate instead.")
  (discharging_rate m))

(cl:ensure-generic-function 'min_linear_vel-val :lambda-list '(m))
(cl:defmethod min_linear_vel-val ((m <RobotConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:min_linear_vel-val is deprecated.  Use auto_smart_factory-msg:min_linear_vel instead.")
  (min_linear_vel m))

(cl:ensure-generic-function 'max_linear_vel-val :lambda-list '(m))
(cl:defmethod max_linear_vel-val ((m <RobotConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:max_linear_vel-val is deprecated.  Use auto_smart_factory-msg:max_linear_vel instead.")
  (max_linear_vel m))

(cl:ensure-generic-function 'max_angular_vel-val :lambda-list '(m))
(cl:defmethod max_angular_vel-val ((m <RobotConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:max_angular_vel-val is deprecated.  Use auto_smart_factory-msg:max_angular_vel instead.")
  (max_angular_vel m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <RobotConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:radius-val is deprecated.  Use auto_smart_factory-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'max_load-val :lambda-list '(m))
(cl:defmethod max_load-val ((m <RobotConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:max_load-val is deprecated.  Use auto_smart_factory-msg:max_load instead.")
  (max_load m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotConfiguration>) ostream)
  "Serializes a message object of type '<RobotConfiguration>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'charging_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'discharging_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_linear_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_linear_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_angular_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_load))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotConfiguration>) istream)
  "Deserializes a message object of type '<RobotConfiguration>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'charging_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'discharging_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_linear_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_linear_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_angular_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_load) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotConfiguration>)))
  "Returns string type for a message object of type '<RobotConfiguration>"
  "auto_smart_factory/RobotConfiguration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotConfiguration)))
  "Returns string type for a message object of type 'RobotConfiguration"
  "auto_smart_factory/RobotConfiguration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotConfiguration>)))
  "Returns md5sum for a message object of type '<RobotConfiguration>"
  "a088bac167b7075ab4169c49586042e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotConfiguration)))
  "Returns md5sum for a message object of type 'RobotConfiguration"
  "a088bac167b7075ab4169c49586042e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotConfiguration>)))
  "Returns full string definition for message of type '<RobotConfiguration>"
  (cl:format cl:nil "# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotConfiguration)))
  "Returns full string definition for message of type 'RobotConfiguration"
  (cl:format cl:nil "# name of this robot type~%string type_name~%~%# charging rate of the battery~%float32 charging_rate~%~%# discharging rate of the battery~%float32 discharging_rate~%~%# minimum linear velocity in [m/s]~%float32 min_linear_vel~%~%# maximum linear velocity in [m/s]~%float32 max_linear_vel~%~%# maximum angular velocity in [rad/s]~%float32 max_angular_vel~%~%# maximum radius of the robot~%float32 radius~%~%# maximum package weight in [kg]~%float32 max_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotConfiguration>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type_name))
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotConfiguration>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotConfiguration
    (cl:cons ':type_name (type_name msg))
    (cl:cons ':charging_rate (charging_rate msg))
    (cl:cons ':discharging_rate (discharging_rate msg))
    (cl:cons ':min_linear_vel (min_linear_vel msg))
    (cl:cons ':max_linear_vel (max_linear_vel msg))
    (cl:cons ':max_angular_vel (max_angular_vel msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':max_load (max_load msg))
))
