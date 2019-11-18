; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude GripperState.msg.html

(cl:defclass <GripperState> (roslisp-msg-protocol:ros-message)
  ((loaded
    :reader loaded
    :initarg :loaded
    :type cl:boolean
    :initform cl:nil)
   (package
    :reader package
    :initarg :package
    :type auto_smart_factory-msg:Package
    :initform (cl:make-instance 'auto_smart_factory-msg:Package)))
)

(cl:defclass GripperState (<GripperState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<GripperState> is deprecated: use auto_smart_factory-msg:GripperState instead.")))

(cl:ensure-generic-function 'loaded-val :lambda-list '(m))
(cl:defmethod loaded-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:loaded-val is deprecated.  Use auto_smart_factory-msg:loaded instead.")
  (loaded m))

(cl:ensure-generic-function 'package-val :lambda-list '(m))
(cl:defmethod package-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:package-val is deprecated.  Use auto_smart_factory-msg:package instead.")
  (package m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperState>) ostream)
  "Serializes a message object of type '<GripperState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'loaded) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'package) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperState>) istream)
  "Deserializes a message object of type '<GripperState>"
    (cl:setf (cl:slot-value msg 'loaded) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'package) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperState>)))
  "Returns string type for a message object of type '<GripperState>"
  "auto_smart_factory/GripperState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperState)))
  "Returns string type for a message object of type 'GripperState"
  "auto_smart_factory/GripperState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperState>)))
  "Returns md5sum for a message object of type '<GripperState>"
  "b937d7d47f113e6408c1ccaabb941455")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperState)))
  "Returns md5sum for a message object of type 'GripperState"
  "b937d7d47f113e6408c1ccaabb941455")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperState>)))
  "Returns full string definition for message of type '<GripperState>"
  (cl:format cl:nil "# robot loaded or unloaded succesfully~%bool loaded~%~%# package~%Package package~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperState)))
  "Returns full string definition for message of type 'GripperState"
  (cl:format cl:nil "# robot loaded or unloaded succesfully~%bool loaded~%~%# package~%Package package~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperState>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'package))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperState>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperState
    (cl:cons ':loaded (loaded msg))
    (cl:cons ':package (package msg))
))
