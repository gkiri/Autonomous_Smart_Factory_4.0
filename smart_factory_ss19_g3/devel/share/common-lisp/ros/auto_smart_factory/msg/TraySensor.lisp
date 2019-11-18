; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude TraySensor.msg.html

(cl:defclass <TraySensor> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (tray_id
    :reader tray_id
    :initarg :tray_id
    :type cl:integer
    :initform 0)
   (occupied
    :reader occupied
    :initarg :occupied
    :type cl:boolean
    :initform cl:nil)
   (package
    :reader package
    :initarg :package
    :type cl:string
    :initform ""))
)

(cl:defclass TraySensor (<TraySensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TraySensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TraySensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<TraySensor> is deprecated: use auto_smart_factory-msg:TraySensor instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <TraySensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:stamp-val is deprecated.  Use auto_smart_factory-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'tray_id-val :lambda-list '(m))
(cl:defmethod tray_id-val ((m <TraySensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:tray_id-val is deprecated.  Use auto_smart_factory-msg:tray_id instead.")
  (tray_id m))

(cl:ensure-generic-function 'occupied-val :lambda-list '(m))
(cl:defmethod occupied-val ((m <TraySensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:occupied-val is deprecated.  Use auto_smart_factory-msg:occupied instead.")
  (occupied m))

(cl:ensure-generic-function 'package-val :lambda-list '(m))
(cl:defmethod package-val ((m <TraySensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:package-val is deprecated.  Use auto_smart_factory-msg:package instead.")
  (package m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TraySensor>) ostream)
  "Serializes a message object of type '<TraySensor>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tray_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'occupied) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'package))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'package))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TraySensor>) istream)
  "Deserializes a message object of type '<TraySensor>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tray_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tray_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tray_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tray_id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'occupied) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'package) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'package) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TraySensor>)))
  "Returns string type for a message object of type '<TraySensor>"
  "auto_smart_factory/TraySensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TraySensor)))
  "Returns string type for a message object of type 'TraySensor"
  "auto_smart_factory/TraySensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TraySensor>)))
  "Returns md5sum for a message object of type '<TraySensor>"
  "725e9e6d6f2ca4eb3fe26342aa2d5180")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TraySensor)))
  "Returns md5sum for a message object of type 'TraySensor"
  "725e9e6d6f2ca4eb3fe26342aa2d5180")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TraySensor>)))
  "Returns full string definition for message of type '<TraySensor>"
  (cl:format cl:nil "time stamp~%~%# tray id~%uint32 tray_id~%~%# state of the tray: occupied/free~%bool occupied~%~%# name of the package if any is near~%string package~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TraySensor)))
  "Returns full string definition for message of type 'TraySensor"
  (cl:format cl:nil "time stamp~%~%# tray id~%uint32 tray_id~%~%# state of the tray: occupied/free~%bool occupied~%~%# name of the package if any is near~%string package~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TraySensor>))
  (cl:+ 0
     8
     4
     1
     4 (cl:length (cl:slot-value msg 'package))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TraySensor>))
  "Converts a ROS message object to a list"
  (cl:list 'TraySensor
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':tray_id (tray_id msg))
    (cl:cons ':occupied (occupied msg))
    (cl:cons ':package (package msg))
))
