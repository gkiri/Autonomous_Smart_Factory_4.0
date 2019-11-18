; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude PackagePool.msg.html

(cl:defclass <PackagePool> (roslisp-msg-protocol:ros-message)
  ((drop_location
    :reader drop_location
    :initarg :drop_location
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (stacking_area
    :reader stacking_area
    :initarg :stacking_area
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 2 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32))))
)

(cl:defclass PackagePool (<PackagePool>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PackagePool>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PackagePool)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<PackagePool> is deprecated: use auto_smart_factory-msg:PackagePool instead.")))

(cl:ensure-generic-function 'drop_location-val :lambda-list '(m))
(cl:defmethod drop_location-val ((m <PackagePool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:drop_location-val is deprecated.  Use auto_smart_factory-msg:drop_location instead.")
  (drop_location m))

(cl:ensure-generic-function 'stacking_area-val :lambda-list '(m))
(cl:defmethod stacking_area-val ((m <PackagePool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:stacking_area-val is deprecated.  Use auto_smart_factory-msg:stacking_area instead.")
  (stacking_area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PackagePool>) ostream)
  "Serializes a message object of type '<PackagePool>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'drop_location) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'stacking_area))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PackagePool>) istream)
  "Deserializes a message object of type '<PackagePool>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'drop_location) istream)
  (cl:setf (cl:slot-value msg 'stacking_area) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'stacking_area)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PackagePool>)))
  "Returns string type for a message object of type '<PackagePool>"
  "auto_smart_factory/PackagePool")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PackagePool)))
  "Returns string type for a message object of type 'PackagePool"
  "auto_smart_factory/PackagePool")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PackagePool>)))
  "Returns md5sum for a message object of type '<PackagePool>"
  "bcef3bd1883fdc3a8214f645cc30ecaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PackagePool)))
  "Returns md5sum for a message object of type 'PackagePool"
  "bcef3bd1883fdc3a8214f645cc30ecaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PackagePool>)))
  "Returns full string definition for message of type '<PackagePool>"
  (cl:format cl:nil "# Drop location: The 3D point where packages can be dropped to be placed in the container.~%geometry_msgs/Point32 drop_location~%~%# Stacking area: Area where packages can be stacked at the beginning~%geometry_msgs/Point32[2] stacking_area~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PackagePool)))
  "Returns full string definition for message of type 'PackagePool"
  (cl:format cl:nil "# Drop location: The 3D point where packages can be dropped to be placed in the container.~%geometry_msgs/Point32 drop_location~%~%# Stacking area: Area where packages can be stacked at the beginning~%geometry_msgs/Point32[2] stacking_area~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PackagePool>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'drop_location))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'stacking_area) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PackagePool>))
  "Converts a ROS message object to a list"
  (cl:list 'PackagePool
    (cl:cons ':drop_location (drop_location msg))
    (cl:cons ':stacking_area (stacking_area msg))
))
