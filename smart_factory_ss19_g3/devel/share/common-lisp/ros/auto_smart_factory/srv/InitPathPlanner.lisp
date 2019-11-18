; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude InitPathPlanner-request.msg.html

(cl:defclass <InitPathPlanner-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass InitPathPlanner-request (<InitPathPlanner-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitPathPlanner-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitPathPlanner-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<InitPathPlanner-request> is deprecated: use auto_smart_factory-srv:InitPathPlanner-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitPathPlanner-request>) ostream)
  "Serializes a message object of type '<InitPathPlanner-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitPathPlanner-request>) istream)
  "Deserializes a message object of type '<InitPathPlanner-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitPathPlanner-request>)))
  "Returns string type for a service object of type '<InitPathPlanner-request>"
  "auto_smart_factory/InitPathPlannerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitPathPlanner-request)))
  "Returns string type for a service object of type 'InitPathPlanner-request"
  "auto_smart_factory/InitPathPlannerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitPathPlanner-request>)))
  "Returns md5sum for a message object of type '<InitPathPlanner-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitPathPlanner-request)))
  "Returns md5sum for a message object of type 'InitPathPlanner-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitPathPlanner-request>)))
  "Returns full string definition for message of type '<InitPathPlanner-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitPathPlanner-request)))
  "Returns full string definition for message of type 'InitPathPlanner-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitPathPlanner-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitPathPlanner-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InitPathPlanner-request
))
;//! \htmlinclude InitPathPlanner-response.msg.html

(cl:defclass <InitPathPlanner-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass InitPathPlanner-response (<InitPathPlanner-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitPathPlanner-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitPathPlanner-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<InitPathPlanner-response> is deprecated: use auto_smart_factory-srv:InitPathPlanner-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <InitPathPlanner-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:success-val is deprecated.  Use auto_smart_factory-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitPathPlanner-response>) ostream)
  "Serializes a message object of type '<InitPathPlanner-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitPathPlanner-response>) istream)
  "Deserializes a message object of type '<InitPathPlanner-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitPathPlanner-response>)))
  "Returns string type for a service object of type '<InitPathPlanner-response>"
  "auto_smart_factory/InitPathPlannerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitPathPlanner-response)))
  "Returns string type for a service object of type 'InitPathPlanner-response"
  "auto_smart_factory/InitPathPlannerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitPathPlanner-response>)))
  "Returns md5sum for a message object of type '<InitPathPlanner-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitPathPlanner-response)))
  "Returns md5sum for a message object of type 'InitPathPlanner-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitPathPlanner-response>)))
  "Returns full string definition for message of type '<InitPathPlanner-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitPathPlanner-response)))
  "Returns full string definition for message of type 'InitPathPlanner-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitPathPlanner-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitPathPlanner-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InitPathPlanner-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InitPathPlanner)))
  'InitPathPlanner-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InitPathPlanner)))
  'InitPathPlanner-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitPathPlanner)))
  "Returns string type for a service object of type '<InitPathPlanner>"
  "auto_smart_factory/InitPathPlanner")