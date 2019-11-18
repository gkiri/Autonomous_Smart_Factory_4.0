; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude GetPackageConfigurations-request.msg.html

(cl:defclass <GetPackageConfigurations-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPackageConfigurations-request (<GetPackageConfigurations-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPackageConfigurations-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPackageConfigurations-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetPackageConfigurations-request> is deprecated: use auto_smart_factory-srv:GetPackageConfigurations-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPackageConfigurations-request>) ostream)
  "Serializes a message object of type '<GetPackageConfigurations-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPackageConfigurations-request>) istream)
  "Deserializes a message object of type '<GetPackageConfigurations-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPackageConfigurations-request>)))
  "Returns string type for a service object of type '<GetPackageConfigurations-request>"
  "auto_smart_factory/GetPackageConfigurationsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPackageConfigurations-request)))
  "Returns string type for a service object of type 'GetPackageConfigurations-request"
  "auto_smart_factory/GetPackageConfigurationsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPackageConfigurations-request>)))
  "Returns md5sum for a message object of type '<GetPackageConfigurations-request>"
  "6c79e4d48272b30033eb439274215257")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPackageConfigurations-request)))
  "Returns md5sum for a message object of type 'GetPackageConfigurations-request"
  "6c79e4d48272b30033eb439274215257")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPackageConfigurations-request>)))
  "Returns full string definition for message of type '<GetPackageConfigurations-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPackageConfigurations-request)))
  "Returns full string definition for message of type 'GetPackageConfigurations-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPackageConfigurations-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPackageConfigurations-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPackageConfigurations-request
))
;//! \htmlinclude GetPackageConfigurations-response.msg.html

(cl:defclass <GetPackageConfigurations-response> (roslisp-msg-protocol:ros-message)
  ((configs
    :reader configs
    :initarg :configs
    :type (cl:vector auto_smart_factory-msg:PackageConfiguration)
   :initform (cl:make-array 0 :element-type 'auto_smart_factory-msg:PackageConfiguration :initial-element (cl:make-instance 'auto_smart_factory-msg:PackageConfiguration))))
)

(cl:defclass GetPackageConfigurations-response (<GetPackageConfigurations-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPackageConfigurations-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPackageConfigurations-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetPackageConfigurations-response> is deprecated: use auto_smart_factory-srv:GetPackageConfigurations-response instead.")))

(cl:ensure-generic-function 'configs-val :lambda-list '(m))
(cl:defmethod configs-val ((m <GetPackageConfigurations-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:configs-val is deprecated.  Use auto_smart_factory-srv:configs instead.")
  (configs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPackageConfigurations-response>) ostream)
  "Serializes a message object of type '<GetPackageConfigurations-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'configs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'configs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPackageConfigurations-response>) istream)
  "Deserializes a message object of type '<GetPackageConfigurations-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'configs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'configs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auto_smart_factory-msg:PackageConfiguration))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPackageConfigurations-response>)))
  "Returns string type for a service object of type '<GetPackageConfigurations-response>"
  "auto_smart_factory/GetPackageConfigurationsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPackageConfigurations-response)))
  "Returns string type for a service object of type 'GetPackageConfigurations-response"
  "auto_smart_factory/GetPackageConfigurationsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPackageConfigurations-response>)))
  "Returns md5sum for a message object of type '<GetPackageConfigurations-response>"
  "6c79e4d48272b30033eb439274215257")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPackageConfigurations-response)))
  "Returns md5sum for a message object of type 'GetPackageConfigurations-response"
  "6c79e4d48272b30033eb439274215257")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPackageConfigurations-response>)))
  "Returns full string definition for message of type '<GetPackageConfigurations-response>"
  (cl:format cl:nil "PackageConfiguration[] configs~%~%~%================================================================================~%MSG: auto_smart_factory/PackageConfiguration~%# package type id (!= package id)~%uint32 id~%~%# package dimensions~%float32 width~%float32 height~%~%# package weight~%float32 weight~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPackageConfigurations-response)))
  "Returns full string definition for message of type 'GetPackageConfigurations-response"
  (cl:format cl:nil "PackageConfiguration[] configs~%~%~%================================================================================~%MSG: auto_smart_factory/PackageConfiguration~%# package type id (!= package id)~%uint32 id~%~%# package dimensions~%float32 width~%float32 height~%~%# package weight~%float32 weight~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPackageConfigurations-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'configs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPackageConfigurations-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPackageConfigurations-response
    (cl:cons ':configs (configs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPackageConfigurations)))
  'GetPackageConfigurations-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPackageConfigurations)))
  'GetPackageConfigurations-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPackageConfigurations)))
  "Returns string type for a service object of type '<GetPackageConfigurations>"
  "auto_smart_factory/GetPackageConfigurations")