; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude TrayGeometry.msg.html

(cl:defclass <TrayGeometry> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrayGeometry (<TrayGeometry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrayGeometry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrayGeometry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<TrayGeometry> is deprecated: use auto_smart_factory-msg:TrayGeometry instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <TrayGeometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:width-val is deprecated.  Use auto_smart_factory-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <TrayGeometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:height-val is deprecated.  Use auto_smart_factory-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrayGeometry>) ostream)
  "Serializes a message object of type '<TrayGeometry>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrayGeometry>) istream)
  "Deserializes a message object of type '<TrayGeometry>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrayGeometry>)))
  "Returns string type for a message object of type '<TrayGeometry>"
  "auto_smart_factory/TrayGeometry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrayGeometry)))
  "Returns string type for a message object of type 'TrayGeometry"
  "auto_smart_factory/TrayGeometry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrayGeometry>)))
  "Returns md5sum for a message object of type '<TrayGeometry>"
  "ed3043f094c99bdd8118bc5b0ddb14ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrayGeometry)))
  "Returns md5sum for a message object of type 'TrayGeometry"
  "ed3043f094c99bdd8118bc5b0ddb14ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrayGeometry>)))
  "Returns full string definition for message of type '<TrayGeometry>"
  (cl:format cl:nil "# Info about the tray geometry~%float32 width~%float32 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrayGeometry)))
  "Returns full string definition for message of type 'TrayGeometry"
  (cl:format cl:nil "# Info about the tray geometry~%float32 width~%float32 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrayGeometry>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrayGeometry>))
  "Converts a ROS message object to a list"
  (cl:list 'TrayGeometry
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
