; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude RequestStatus.msg.html

(cl:defclass <RequestStatus> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (pkg_config
    :reader pkg_config
    :initarg :pkg_config
    :type auto_smart_factory-msg:PackageConfiguration
    :initform (cl:make-instance 'auto_smart_factory-msg:PackageConfiguration))
   (create_time
    :reader create_time
    :initarg :create_time
    :type cl:real
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass RequestStatus (<RequestStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<RequestStatus> is deprecated: use auto_smart_factory-msg:RequestStatus instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <RequestStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:stamp-val is deprecated.  Use auto_smart_factory-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RequestStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:id-val is deprecated.  Use auto_smart_factory-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RequestStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:type-val is deprecated.  Use auto_smart_factory-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'pkg_config-val :lambda-list '(m))
(cl:defmethod pkg_config-val ((m <RequestStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:pkg_config-val is deprecated.  Use auto_smart_factory-msg:pkg_config instead.")
  (pkg_config m))

(cl:ensure-generic-function 'create_time-val :lambda-list '(m))
(cl:defmethod create_time-val ((m <RequestStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:create_time-val is deprecated.  Use auto_smart_factory-msg:create_time instead.")
  (create_time m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RequestStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:status-val is deprecated.  Use auto_smart_factory-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestStatus>) ostream)
  "Serializes a message object of type '<RequestStatus>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pkg_config) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'create_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'create_time) (cl:floor (cl:slot-value msg 'create_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestStatus>) istream)
  "Deserializes a message object of type '<RequestStatus>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pkg_config) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'create_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestStatus>)))
  "Returns string type for a message object of type '<RequestStatus>"
  "auto_smart_factory/RequestStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestStatus)))
  "Returns string type for a message object of type 'RequestStatus"
  "auto_smart_factory/RequestStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestStatus>)))
  "Returns md5sum for a message object of type '<RequestStatus>"
  "bc3a3dfca62979fa9ca3cdbb8d695ce9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestStatus)))
  "Returns md5sum for a message object of type 'RequestStatus"
  "bc3a3dfca62979fa9ca3cdbb8d695ce9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestStatus>)))
  "Returns full string definition for message of type '<RequestStatus>"
  (cl:format cl:nil "# time stamp for this status message~%time stamp~%~%# id of this request~%uint32 id~%~%# type of request. This is either 'input' or 'output'~%string type~%~%# the package type~%PackageConfiguration pkg_config~%~%# time when this request was created~%time create_time~%~%# message describing the current status of this request~%string status~%~%~%================================================================================~%MSG: auto_smart_factory/PackageConfiguration~%# package type id (!= package id)~%uint32 id~%~%# package dimensions~%float32 width~%float32 height~%~%# package weight~%float32 weight~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestStatus)))
  "Returns full string definition for message of type 'RequestStatus"
  (cl:format cl:nil "# time stamp for this status message~%time stamp~%~%# id of this request~%uint32 id~%~%# type of request. This is either 'input' or 'output'~%string type~%~%# the package type~%PackageConfiguration pkg_config~%~%# time when this request was created~%time create_time~%~%# message describing the current status of this request~%string status~%~%~%================================================================================~%MSG: auto_smart_factory/PackageConfiguration~%# package type id (!= package id)~%uint32 id~%~%# package dimensions~%float32 width~%float32 height~%~%# package weight~%float32 weight~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestStatus>))
  (cl:+ 0
     8
     4
     4 (cl:length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pkg_config))
     8
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestStatus
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':pkg_config (pkg_config msg))
    (cl:cons ':create_time (create_time msg))
    (cl:cons ':status (status msg))
))
