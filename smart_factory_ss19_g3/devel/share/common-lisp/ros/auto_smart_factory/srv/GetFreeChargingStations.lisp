; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude GetFreeChargingStations-request.msg.html

(cl:defclass <GetFreeChargingStations-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetFreeChargingStations-request (<GetFreeChargingStations-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFreeChargingStations-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFreeChargingStations-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetFreeChargingStations-request> is deprecated: use auto_smart_factory-srv:GetFreeChargingStations-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFreeChargingStations-request>) ostream)
  "Serializes a message object of type '<GetFreeChargingStations-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFreeChargingStations-request>) istream)
  "Deserializes a message object of type '<GetFreeChargingStations-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFreeChargingStations-request>)))
  "Returns string type for a service object of type '<GetFreeChargingStations-request>"
  "auto_smart_factory/GetFreeChargingStationsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFreeChargingStations-request)))
  "Returns string type for a service object of type 'GetFreeChargingStations-request"
  "auto_smart_factory/GetFreeChargingStationsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFreeChargingStations-request>)))
  "Returns md5sum for a message object of type '<GetFreeChargingStations-request>"
  "7fb2a4c1b47848e858cbbcedcada5418")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFreeChargingStations-request)))
  "Returns md5sum for a message object of type 'GetFreeChargingStations-request"
  "7fb2a4c1b47848e858cbbcedcada5418")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFreeChargingStations-request>)))
  "Returns full string definition for message of type '<GetFreeChargingStations-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFreeChargingStations-request)))
  "Returns full string definition for message of type 'GetFreeChargingStations-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFreeChargingStations-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFreeChargingStations-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFreeChargingStations-request
))
;//! \htmlinclude GetFreeChargingStations-response.msg.html

(cl:defclass <GetFreeChargingStations-response> (roslisp-msg-protocol:ros-message)
  ((charging_stations
    :reader charging_stations
    :initarg :charging_stations
    :type (cl:vector auto_smart_factory-msg:Tray)
   :initform (cl:make-array 0 :element-type 'auto_smart_factory-msg:Tray :initial-element (cl:make-instance 'auto_smart_factory-msg:Tray))))
)

(cl:defclass GetFreeChargingStations-response (<GetFreeChargingStations-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFreeChargingStations-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFreeChargingStations-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<GetFreeChargingStations-response> is deprecated: use auto_smart_factory-srv:GetFreeChargingStations-response instead.")))

(cl:ensure-generic-function 'charging_stations-val :lambda-list '(m))
(cl:defmethod charging_stations-val ((m <GetFreeChargingStations-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:charging_stations-val is deprecated.  Use auto_smart_factory-srv:charging_stations instead.")
  (charging_stations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFreeChargingStations-response>) ostream)
  "Serializes a message object of type '<GetFreeChargingStations-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'charging_stations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'charging_stations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFreeChargingStations-response>) istream)
  "Deserializes a message object of type '<GetFreeChargingStations-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'charging_stations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'charging_stations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auto_smart_factory-msg:Tray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFreeChargingStations-response>)))
  "Returns string type for a service object of type '<GetFreeChargingStations-response>"
  "auto_smart_factory/GetFreeChargingStationsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFreeChargingStations-response)))
  "Returns string type for a service object of type 'GetFreeChargingStations-response"
  "auto_smart_factory/GetFreeChargingStationsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFreeChargingStations-response>)))
  "Returns md5sum for a message object of type '<GetFreeChargingStations-response>"
  "7fb2a4c1b47848e858cbbcedcada5418")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFreeChargingStations-response)))
  "Returns md5sum for a message object of type 'GetFreeChargingStations-response"
  "7fb2a4c1b47848e858cbbcedcada5418")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFreeChargingStations-response>)))
  "Returns full string definition for message of type '<GetFreeChargingStations-response>"
  (cl:format cl:nil "Tray[] charging_stations~%~%~%================================================================================~%MSG: auto_smart_factory/Tray~%# The representation of a warehouse tray~%~%# the unique identifier of this tray~%uint32 id~%~%# the type of the tray. Valid values: 'input', 'output' and 'storage'~%string type~%~%# the coordinates of the center of the tray in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%# maximum load, i.e. the maximum weight of packages to be put into this tray~%float32 max_load~%~%# package type this tray can carry. 0 means no constraints.~%uint32 package_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFreeChargingStations-response)))
  "Returns full string definition for message of type 'GetFreeChargingStations-response"
  (cl:format cl:nil "Tray[] charging_stations~%~%~%================================================================================~%MSG: auto_smart_factory/Tray~%# The representation of a warehouse tray~%~%# the unique identifier of this tray~%uint32 id~%~%# the type of the tray. Valid values: 'input', 'output' and 'storage'~%string type~%~%# the coordinates of the center of the tray in the '/map' frame~%float32 x~%float32 y~%~%# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.~%float32 orientation~%~%# maximum load, i.e. the maximum weight of packages to be put into this tray~%float32 max_load~%~%# package type this tray can carry. 0 means no constraints.~%uint32 package_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFreeChargingStations-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'charging_stations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFreeChargingStations-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFreeChargingStations-response
    (cl:cons ':charging_stations (charging_stations msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFreeChargingStations)))
  'GetFreeChargingStations-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFreeChargingStations)))
  'GetFreeChargingStations-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFreeChargingStations)))
  "Returns string type for a service object of type '<GetFreeChargingStations>"
  "auto_smart_factory/GetFreeChargingStations")