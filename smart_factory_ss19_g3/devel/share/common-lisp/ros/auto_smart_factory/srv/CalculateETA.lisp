; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude CalculateETA-request.msg.html

(cl:defclass <CalculateETA-request> (roslisp-msg-protocol:ros-message)
  ((posStart
    :reader posStart
    :initarg :posStart
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (posEnd
    :reader posEnd
    :initarg :posEnd
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (robotId
    :reader robotId
    :initarg :robotId
    :type cl:string
    :initform ""))
)

(cl:defclass CalculateETA-request (<CalculateETA-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalculateETA-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalculateETA-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<CalculateETA-request> is deprecated: use auto_smart_factory-srv:CalculateETA-request instead.")))

(cl:ensure-generic-function 'posStart-val :lambda-list '(m))
(cl:defmethod posStart-val ((m <CalculateETA-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:posStart-val is deprecated.  Use auto_smart_factory-srv:posStart instead.")
  (posStart m))

(cl:ensure-generic-function 'posEnd-val :lambda-list '(m))
(cl:defmethod posEnd-val ((m <CalculateETA-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:posEnd-val is deprecated.  Use auto_smart_factory-srv:posEnd instead.")
  (posEnd m))

(cl:ensure-generic-function 'robotId-val :lambda-list '(m))
(cl:defmethod robotId-val ((m <CalculateETA-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:robotId-val is deprecated.  Use auto_smart_factory-srv:robotId instead.")
  (robotId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalculateETA-request>) ostream)
  "Serializes a message object of type '<CalculateETA-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'posStart) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'posEnd) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robotId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robotId))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalculateETA-request>) istream)
  "Deserializes a message object of type '<CalculateETA-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'posStart) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'posEnd) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robotId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalculateETA-request>)))
  "Returns string type for a service object of type '<CalculateETA-request>"
  "auto_smart_factory/CalculateETARequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalculateETA-request)))
  "Returns string type for a service object of type 'CalculateETA-request"
  "auto_smart_factory/CalculateETARequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalculateETA-request>)))
  "Returns md5sum for a message object of type '<CalculateETA-request>"
  "192e38bd534846aab00c4eb9ae76cdf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalculateETA-request)))
  "Returns md5sum for a message object of type 'CalculateETA-request"
  "192e38bd534846aab00c4eb9ae76cdf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalculateETA-request>)))
  "Returns full string definition for message of type '<CalculateETA-request>"
  (cl:format cl:nil "geometry_msgs/Point posStart~%geometry_msgs/Point posEnd~%string robotId~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalculateETA-request)))
  "Returns full string definition for message of type 'CalculateETA-request"
  (cl:format cl:nil "geometry_msgs/Point posStart~%geometry_msgs/Point posEnd~%string robotId~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalculateETA-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'posStart))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'posEnd))
     4 (cl:length (cl:slot-value msg 'robotId))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalculateETA-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CalculateETA-request
    (cl:cons ':posStart (posStart msg))
    (cl:cons ':posEnd (posEnd msg))
    (cl:cons ':robotId (robotId msg))
))
;//! \htmlinclude CalculateETA-response.msg.html

(cl:defclass <CalculateETA-response> (roslisp-msg-protocol:ros-message)
  ((resultETA
    :reader resultETA
    :initarg :resultETA
    :type cl:float
    :initform 0.0))
)

(cl:defclass CalculateETA-response (<CalculateETA-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalculateETA-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalculateETA-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<CalculateETA-response> is deprecated: use auto_smart_factory-srv:CalculateETA-response instead.")))

(cl:ensure-generic-function 'resultETA-val :lambda-list '(m))
(cl:defmethod resultETA-val ((m <CalculateETA-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:resultETA-val is deprecated.  Use auto_smart_factory-srv:resultETA instead.")
  (resultETA m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalculateETA-response>) ostream)
  "Serializes a message object of type '<CalculateETA-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'resultETA))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalculateETA-response>) istream)
  "Deserializes a message object of type '<CalculateETA-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resultETA) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalculateETA-response>)))
  "Returns string type for a service object of type '<CalculateETA-response>"
  "auto_smart_factory/CalculateETAResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalculateETA-response)))
  "Returns string type for a service object of type 'CalculateETA-response"
  "auto_smart_factory/CalculateETAResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalculateETA-response>)))
  "Returns md5sum for a message object of type '<CalculateETA-response>"
  "192e38bd534846aab00c4eb9ae76cdf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalculateETA-response)))
  "Returns md5sum for a message object of type 'CalculateETA-response"
  "192e38bd534846aab00c4eb9ae76cdf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalculateETA-response>)))
  "Returns full string definition for message of type '<CalculateETA-response>"
  (cl:format cl:nil "~%float32 resultETA~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalculateETA-response)))
  "Returns full string definition for message of type 'CalculateETA-response"
  (cl:format cl:nil "~%float32 resultETA~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalculateETA-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalculateETA-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CalculateETA-response
    (cl:cons ':resultETA (resultETA msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CalculateETA)))
  'CalculateETA-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CalculateETA)))
  'CalculateETA-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalculateETA)))
  "Returns string type for a service object of type '<CalculateETA>"
  "auto_smart_factory/CalculateETA")