; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude AdditionalTime.msg.html

(cl:defclass <AdditionalTime> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass AdditionalTime (<AdditionalTime>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdditionalTime>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdditionalTime)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<AdditionalTime> is deprecated: use auto_smart_factory-msg:AdditionalTime instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <AdditionalTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:time-val is deprecated.  Use auto_smart_factory-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdditionalTime>) ostream)
  "Serializes a message object of type '<AdditionalTime>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdditionalTime>) istream)
  "Deserializes a message object of type '<AdditionalTime>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdditionalTime>)))
  "Returns string type for a message object of type '<AdditionalTime>"
  "auto_smart_factory/AdditionalTime")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdditionalTime)))
  "Returns string type for a message object of type 'AdditionalTime"
  "auto_smart_factory/AdditionalTime")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdditionalTime>)))
  "Returns md5sum for a message object of type '<AdditionalTime>"
  "595a4e99326479146b97bd6237a70ce2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdditionalTime)))
  "Returns md5sum for a message object of type 'AdditionalTime"
  "595a4e99326479146b97bd6237a70ce2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdditionalTime>)))
  "Returns full string definition for message of type '<AdditionalTime>"
  (cl:format cl:nil "# additional time for the current task~%float32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdditionalTime)))
  "Returns full string definition for message of type 'AdditionalTime"
  (cl:format cl:nil "# additional time for the current task~%float32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdditionalTime>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdditionalTime>))
  "Converts a ROS message object to a list"
  (cl:list 'AdditionalTime
    (cl:cons ':time (time msg))
))
