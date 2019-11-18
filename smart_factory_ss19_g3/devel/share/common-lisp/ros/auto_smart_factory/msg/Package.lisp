; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude Package.msg.html

(cl:defclass <Package> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (type_id
    :reader type_id
    :initarg :type_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Package (<Package>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Package>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Package)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<Package> is deprecated: use auto_smart_factory-msg:Package instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Package>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:id-val is deprecated.  Use auto_smart_factory-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type_id-val :lambda-list '(m))
(cl:defmethod type_id-val ((m <Package>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:type_id-val is deprecated.  Use auto_smart_factory-msg:type_id instead.")
  (type_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Package>) ostream)
  "Serializes a message object of type '<Package>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Package>) istream)
  "Deserializes a message object of type '<Package>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Package>)))
  "Returns string type for a message object of type '<Package>"
  "auto_smart_factory/Package")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Package)))
  "Returns string type for a message object of type 'Package"
  "auto_smart_factory/Package")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Package>)))
  "Returns md5sum for a message object of type '<Package>"
  "deb8587ce4dfba7871cb511e3cf31f9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Package)))
  "Returns md5sum for a message object of type 'Package"
  "deb8587ce4dfba7871cb511e3cf31f9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Package>)))
  "Returns full string definition for message of type '<Package>"
  (cl:format cl:nil "# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Package)))
  "Returns full string definition for message of type 'Package"
  (cl:format cl:nil "# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Package>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Package>))
  "Converts a ROS message object to a list"
  (cl:list 'Package
    (cl:cons ':id (id msg))
    (cl:cons ':type_id (type_id msg))
))
