; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude WallGeometry.msg.html

(cl:defclass <WallGeometry> (roslisp-msg-protocol:ros-message)
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

(cl:defclass WallGeometry (<WallGeometry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WallGeometry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WallGeometry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<WallGeometry> is deprecated: use auto_smart_factory-msg:WallGeometry instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <WallGeometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:width-val is deprecated.  Use auto_smart_factory-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <WallGeometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:height-val is deprecated.  Use auto_smart_factory-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WallGeometry>) ostream)
  "Serializes a message object of type '<WallGeometry>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WallGeometry>) istream)
  "Deserializes a message object of type '<WallGeometry>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WallGeometry>)))
  "Returns string type for a message object of type '<WallGeometry>"
  "auto_smart_factory/WallGeometry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WallGeometry)))
  "Returns string type for a message object of type 'WallGeometry"
  "auto_smart_factory/WallGeometry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WallGeometry>)))
  "Returns md5sum for a message object of type '<WallGeometry>"
  "ed3043f094c99bdd8118bc5b0ddb14ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WallGeometry)))
  "Returns md5sum for a message object of type 'WallGeometry"
  "ed3043f094c99bdd8118bc5b0ddb14ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WallGeometry>)))
  "Returns full string definition for message of type '<WallGeometry>"
  (cl:format cl:nil "# Info about the wall geometry~%float32 width~%float32 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WallGeometry)))
  "Returns full string definition for message of type 'WallGeometry"
  (cl:format cl:nil "# Info about the wall geometry~%float32 width~%float32 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WallGeometry>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WallGeometry>))
  "Converts a ROS message object to a list"
  (cl:list 'WallGeometry
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
