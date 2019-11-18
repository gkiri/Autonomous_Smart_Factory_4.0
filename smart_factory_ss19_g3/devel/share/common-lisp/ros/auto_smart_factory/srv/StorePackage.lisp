; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-srv)


;//! \htmlinclude StorePackage-request.msg.html

(cl:defclass <StorePackage-request> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (input_tray_ids
    :reader input_tray_ids
    :initarg :input_tray_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (storage_tray_ids
    :reader storage_tray_ids
    :initarg :storage_tray_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass StorePackage-request (<StorePackage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StorePackage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StorePackage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<StorePackage-request> is deprecated: use auto_smart_factory-srv:StorePackage-request instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <StorePackage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:task_id-val is deprecated.  Use auto_smart_factory-srv:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'input_tray_ids-val :lambda-list '(m))
(cl:defmethod input_tray_ids-val ((m <StorePackage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:input_tray_ids-val is deprecated.  Use auto_smart_factory-srv:input_tray_ids instead.")
  (input_tray_ids m))

(cl:ensure-generic-function 'storage_tray_ids-val :lambda-list '(m))
(cl:defmethod storage_tray_ids-val ((m <StorePackage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:storage_tray_ids-val is deprecated.  Use auto_smart_factory-srv:storage_tray_ids instead.")
  (storage_tray_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StorePackage-request>) ostream)
  "Serializes a message object of type '<StorePackage-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'input_tray_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'input_tray_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'storage_tray_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'storage_tray_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StorePackage-request>) istream)
  "Deserializes a message object of type '<StorePackage-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'input_tray_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'input_tray_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'storage_tray_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'storage_tray_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StorePackage-request>)))
  "Returns string type for a service object of type '<StorePackage-request>"
  "auto_smart_factory/StorePackageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StorePackage-request)))
  "Returns string type for a service object of type 'StorePackage-request"
  "auto_smart_factory/StorePackageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StorePackage-request>)))
  "Returns md5sum for a message object of type '<StorePackage-request>"
  "67e49e41b5ecafbc04ac8d70094ced2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StorePackage-request)))
  "Returns md5sum for a message object of type 'StorePackage-request"
  "67e49e41b5ecafbc04ac8d70094ced2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StorePackage-request>)))
  "Returns full string definition for message of type '<StorePackage-request>"
  (cl:format cl:nil "uint32 task_id~%uint32[] input_tray_ids~%uint32[] storage_tray_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StorePackage-request)))
  "Returns full string definition for message of type 'StorePackage-request"
  (cl:format cl:nil "uint32 task_id~%uint32[] input_tray_ids~%uint32[] storage_tray_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StorePackage-request>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'input_tray_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'storage_tray_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StorePackage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StorePackage-request
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':input_tray_ids (input_tray_ids msg))
    (cl:cons ':storage_tray_ids (storage_tray_ids msg))
))
;//! \htmlinclude StorePackage-response.msg.html

(cl:defclass <StorePackage-response> (roslisp-msg-protocol:ros-message)
  ((storage_id
    :reader storage_id
    :initarg :storage_id
    :type cl:integer
    :initform 0)
   (estimated_time
    :reader estimated_time
    :initarg :estimated_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass StorePackage-response (<StorePackage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StorePackage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StorePackage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-srv:<StorePackage-response> is deprecated: use auto_smart_factory-srv:StorePackage-response instead.")))

(cl:ensure-generic-function 'storage_id-val :lambda-list '(m))
(cl:defmethod storage_id-val ((m <StorePackage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:storage_id-val is deprecated.  Use auto_smart_factory-srv:storage_id instead.")
  (storage_id m))

(cl:ensure-generic-function 'estimated_time-val :lambda-list '(m))
(cl:defmethod estimated_time-val ((m <StorePackage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-srv:estimated_time-val is deprecated.  Use auto_smart_factory-srv:estimated_time instead.")
  (estimated_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StorePackage-response>) ostream)
  "Serializes a message object of type '<StorePackage-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'storage_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'storage_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'storage_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'storage_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'estimated_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StorePackage-response>) istream)
  "Deserializes a message object of type '<StorePackage-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'storage_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'storage_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'storage_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'storage_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'estimated_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StorePackage-response>)))
  "Returns string type for a service object of type '<StorePackage-response>"
  "auto_smart_factory/StorePackageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StorePackage-response)))
  "Returns string type for a service object of type 'StorePackage-response"
  "auto_smart_factory/StorePackageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StorePackage-response>)))
  "Returns md5sum for a message object of type '<StorePackage-response>"
  "67e49e41b5ecafbc04ac8d70094ced2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StorePackage-response)))
  "Returns md5sum for a message object of type 'StorePackage-response"
  "67e49e41b5ecafbc04ac8d70094ced2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StorePackage-response>)))
  "Returns full string definition for message of type '<StorePackage-response>"
  (cl:format cl:nil "uint32 storage_id~%float64 estimated_time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StorePackage-response)))
  "Returns full string definition for message of type 'StorePackage-response"
  (cl:format cl:nil "uint32 storage_id~%float64 estimated_time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StorePackage-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StorePackage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StorePackage-response
    (cl:cons ':storage_id (storage_id msg))
    (cl:cons ':estimated_time (estimated_time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StorePackage)))
  'StorePackage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StorePackage)))
  'StorePackage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StorePackage)))
  "Returns string type for a service object of type '<StorePackage>"
  "auto_smart_factory/StorePackage")