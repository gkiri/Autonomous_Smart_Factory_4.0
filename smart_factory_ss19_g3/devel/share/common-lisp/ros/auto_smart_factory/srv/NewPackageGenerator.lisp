; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude NewPackageGenerator-request.msg.html

(cl:defclass <NewPackageGenerator-request> (roslisp-msg-protocol:ros-message)
  ((tray
    :reader tray
    :initarg :tray
    :type auto_smart_factory-msg:Tray
    :initform (cl:make-instance 'auto_smart_factory-msg:Tray))
   (package
    :reader package
    :initarg :package
    :type auto_smart_factory-msg:Package
    :initform (cl:make-instance 'auto_smart_factory-msg:Package)))
)

(cl:defclass NewPackageGenerator-request (<NewPackageGenerator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewPackageGenerator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewPackageGenerator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<NewPackageGenerator-request> is deprecated: use auto_smart_factory-srv:NewPackageGenerator-request instead.")))

(cl:ensure-generic-function 'tray-val :lambda-list '(m))
(cl:defmethod tray-val ((m <NewPackageGenerator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:tray-val is deprecated.  Use auto_smart_factory-srv:tray instead.")
  (tray m))

(cl:ensure-generic-function 'package-val :lambda-list '(m))
(cl:defmethod package-val ((m <NewPackageGenerator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:package-val is deprecated.  Use auto_smart_factory-srv:package instead.")
  (package m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewPackageGenerator-request>) ostream)
  "Serializes a message object of type '<NewPackageGenerator-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tray) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'package) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewPackageGenerator-request>) istream)
  "Deserializes a message object of type '<NewPackageGenerator-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tray) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'package) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewPackageGenerator-request>)))
  "Returns string type for a service object of type '<NewPackageGenerator-request>"
  "auto_smart_factory/NewPackageGeneratorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewPackageGenerator-request)))
  "Returns string type for a service object of type 'NewPackageGenerator-request"
  "auto_smart_factory/NewPackageGeneratorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewPackageGenerator-request>)))
  "Returns md5sum for a message object of type '<NewPackageGenerator-request>"
  "e07a595ba2d638991b2afc427b4d8daa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewPackageGenerator-request)))
  "Returns md5sum for a message object of type 'NewPackageGenerator-request"
  "e07a595ba2d638991b2afc427b4d8daa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewPackageGenerator-request>)))
  "Returns full string definition for message of type '<NewPackageGenerator-request>"
  (cl:format cl:nil "~%Tray tray~%~%~%Package package~%~%================================================================================~%MSG: auto_smart_factory/Tray~%# The representation of a warehouse tray~%~%# the unique identifier of this tray~%uint32 id~%~%# the type of the tray. Valid values: 'input', 'output' and 'storage'~%string type~%~%# the coordinates of the center of the tray in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%# maximum load, i.e. the maximum weight of packages to be put into this tray~%float32 max_load~%~%# package type this tray can carry. 0 means no constraints.~%uint32 package_type~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewPackageGenerator-request)))
  "Returns full string definition for message of type 'NewPackageGenerator-request"
  (cl:format cl:nil "~%Tray tray~%~%~%Package package~%~%================================================================================~%MSG: auto_smart_factory/Tray~%# The representation of a warehouse tray~%~%# the unique identifier of this tray~%uint32 id~%~%# the type of the tray. Valid values: 'input', 'output' and 'storage'~%string type~%~%# the coordinates of the center of the tray in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%# maximum load, i.e. the maximum weight of packages to be put into this tray~%float32 max_load~%~%# package type this tray can carry. 0 means no constraints.~%uint32 package_type~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewPackageGenerator-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tray))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'package))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewPackageGenerator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NewPackageGenerator-request
    (cl:cons ':tray (tray msg))
    (cl:cons ':package (package msg))
))
;//! \htmlinclude NewPackageGenerator-response.msg.html

(cl:defclass <NewPackageGenerator-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NewPackageGenerator-response (<NewPackageGenerator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewPackageGenerator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewPackageGenerator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<NewPackageGenerator-response> is deprecated: use auto_smart_factory-srv:NewPackageGenerator-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <NewPackageGenerator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewPackageGenerator-response>) ostream)
  "Serializes a message object of type '<NewPackageGenerator-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewPackageGenerator-response>) istream)
  "Deserializes a message object of type '<NewPackageGenerator-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewPackageGenerator-response>)))
  "Returns string type for a service object of type '<NewPackageGenerator-response>"
  "auto_smart_factory/NewPackageGeneratorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewPackageGenerator-response)))
  "Returns string type for a service object of type 'NewPackageGenerator-response"
  "auto_smart_factory/NewPackageGeneratorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewPackageGenerator-response>)))
  "Returns md5sum for a message object of type '<NewPackageGenerator-response>"
  "e07a595ba2d638991b2afc427b4d8daa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewPackageGenerator-response)))
  "Returns md5sum for a message object of type 'NewPackageGenerator-response"
  "e07a595ba2d638991b2afc427b4d8daa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewPackageGenerator-response>)))
  "Returns full string definition for message of type '<NewPackageGenerator-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewPackageGenerator-response)))
  "Returns full string definition for message of type 'NewPackageGenerator-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewPackageGenerator-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewPackageGenerator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NewPackageGenerator-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NewPackageGenerator)))
  'NewPackageGenerator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NewPackageGenerator)))
  'NewPackageGenerator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewPackageGenerator)))
  "Returns string type for a service object of type '<NewPackageGenerator>"
  "auto_smart_factory/NewPackageGenerator")