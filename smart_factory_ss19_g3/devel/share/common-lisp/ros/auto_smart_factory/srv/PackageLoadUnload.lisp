; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude PackageLoadUnload-request.msg.html

(cl:defclass <PackageLoadUnload-request> (roslisp-msg-protocol:ros-message)
  ((load
    :reader load
    :initarg :load
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PackageLoadUnload-request (<PackageLoadUnload-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PackageLoadUnload-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PackageLoadUnload-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<PackageLoadUnload-request> is deprecated: use auto_smart_factory-srv:PackageLoadUnload-request instead.")))

(cl:ensure-generic-function 'load-val :lambda-list '(m))
(cl:defmethod load-val ((m <PackageLoadUnload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:load-val is deprecated.  Use auto_smart_factory-srv:load instead.")
  (load m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PackageLoadUnload-request>) ostream)
  "Serializes a message object of type '<PackageLoadUnload-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'load) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PackageLoadUnload-request>) istream)
  "Deserializes a message object of type '<PackageLoadUnload-request>"
    (cl:setf (cl:slot-value msg 'load) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PackageLoadUnload-request>)))
  "Returns string type for a service object of type '<PackageLoadUnload-request>"
  "auto_smart_factory/PackageLoadUnloadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PackageLoadUnload-request)))
  "Returns string type for a service object of type 'PackageLoadUnload-request"
  "auto_smart_factory/PackageLoadUnloadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PackageLoadUnload-request>)))
  "Returns md5sum for a message object of type '<PackageLoadUnload-request>"
  "c4d3a214c65f27f5df9ff54dfe5d21d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PackageLoadUnload-request)))
  "Returns md5sum for a message object of type 'PackageLoadUnload-request"
  "c4d3a214c65f27f5df9ff54dfe5d21d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PackageLoadUnload-request>)))
  "Returns full string definition for message of type '<PackageLoadUnload-request>"
  (cl:format cl:nil "bool load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PackageLoadUnload-request)))
  "Returns full string definition for message of type 'PackageLoadUnload-request"
  (cl:format cl:nil "bool load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PackageLoadUnload-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PackageLoadUnload-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PackageLoadUnload-request
    (cl:cons ':load (load msg))
))
;//! \htmlinclude PackageLoadUnload-response.msg.html

(cl:defclass <PackageLoadUnload-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PackageLoadUnload-response (<PackageLoadUnload-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PackageLoadUnload-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PackageLoadUnload-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<PackageLoadUnload-response> is deprecated: use auto_smart_factory-srv:PackageLoadUnload-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PackageLoadUnload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PackageLoadUnload-response>) ostream)
  "Serializes a message object of type '<PackageLoadUnload-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PackageLoadUnload-response>) istream)
  "Deserializes a message object of type '<PackageLoadUnload-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PackageLoadUnload-response>)))
  "Returns string type for a service object of type '<PackageLoadUnload-response>"
  "auto_smart_factory/PackageLoadUnloadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PackageLoadUnload-response)))
  "Returns string type for a service object of type 'PackageLoadUnload-response"
  "auto_smart_factory/PackageLoadUnloadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PackageLoadUnload-response>)))
  "Returns md5sum for a message object of type '<PackageLoadUnload-response>"
  "c4d3a214c65f27f5df9ff54dfe5d21d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PackageLoadUnload-response)))
  "Returns md5sum for a message object of type 'PackageLoadUnload-response"
  "c4d3a214c65f27f5df9ff54dfe5d21d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PackageLoadUnload-response>)))
  "Returns full string definition for message of type '<PackageLoadUnload-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PackageLoadUnload-response)))
  "Returns full string definition for message of type 'PackageLoadUnload-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PackageLoadUnload-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PackageLoadUnload-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PackageLoadUnload-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PackageLoadUnload)))
  'PackageLoadUnload-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PackageLoadUnload)))
  'PackageLoadUnload-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PackageLoadUnload)))
  "Returns string type for a service object of type '<PackageLoadUnload>"
  "auto_smart_factory/PackageLoadUnload")