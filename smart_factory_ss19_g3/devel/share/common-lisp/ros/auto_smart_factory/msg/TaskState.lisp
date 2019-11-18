; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude TaskState.msg.html

(cl:defclass <TaskState> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (requestCreateTime
    :reader requestCreateTime
    :initarg :requestCreateTime
    :type cl:real
    :initform 0)
   (runTime
    :reader runTime
    :initarg :runTime
    :type cl:real
    :initform 0)
   (loadTime
    :reader loadTime
    :initarg :loadTime
    :type cl:real
    :initform 0)
   (unloadTime
    :reader unloadTime
    :initarg :unloadTime
    :type cl:real
    :initform 0)
   (estimatedDuration
    :reader estimatedDuration
    :initarg :estimatedDuration
    :type cl:real
    :initform 0)
   (robot
    :reader robot
    :initarg :robot
    :type cl:string
    :initform "")
   (package
    :reader package
    :initarg :package
    :type auto_smart_factory-msg:Package
    :initform (cl:make-instance 'auto_smart_factory-msg:Package))
   (sourceTray
    :reader sourceTray
    :initarg :sourceTray
    :type cl:integer
    :initform 0)
   (targetTray
    :reader targetTray
    :initarg :targetTray
    :type cl:integer
    :initform 0))
)

(cl:defclass TaskState (<TaskState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<TaskState> is deprecated: use auto_smart_factory-msg:TaskState instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:id-val is deprecated.  Use auto_smart_factory-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:status-val is deprecated.  Use auto_smart_factory-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'requestCreateTime-val :lambda-list '(m))
(cl:defmethod requestCreateTime-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:requestCreateTime-val is deprecated.  Use auto_smart_factory-msg:requestCreateTime instead.")
  (requestCreateTime m))

(cl:ensure-generic-function 'runTime-val :lambda-list '(m))
(cl:defmethod runTime-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:runTime-val is deprecated.  Use auto_smart_factory-msg:runTime instead.")
  (runTime m))

(cl:ensure-generic-function 'loadTime-val :lambda-list '(m))
(cl:defmethod loadTime-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:loadTime-val is deprecated.  Use auto_smart_factory-msg:loadTime instead.")
  (loadTime m))

(cl:ensure-generic-function 'unloadTime-val :lambda-list '(m))
(cl:defmethod unloadTime-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:unloadTime-val is deprecated.  Use auto_smart_factory-msg:unloadTime instead.")
  (unloadTime m))

(cl:ensure-generic-function 'estimatedDuration-val :lambda-list '(m))
(cl:defmethod estimatedDuration-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:estimatedDuration-val is deprecated.  Use auto_smart_factory-msg:estimatedDuration instead.")
  (estimatedDuration m))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:robot-val is deprecated.  Use auto_smart_factory-msg:robot instead.")
  (robot m))

(cl:ensure-generic-function 'package-val :lambda-list '(m))
(cl:defmethod package-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:package-val is deprecated.  Use auto_smart_factory-msg:package instead.")
  (package m))

(cl:ensure-generic-function 'sourceTray-val :lambda-list '(m))
(cl:defmethod sourceTray-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:sourceTray-val is deprecated.  Use auto_smart_factory-msg:sourceTray instead.")
  (sourceTray m))

(cl:ensure-generic-function 'targetTray-val :lambda-list '(m))
(cl:defmethod targetTray-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:targetTray-val is deprecated.  Use auto_smart_factory-msg:targetTray instead.")
  (targetTray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskState>) ostream)
  "Serializes a message object of type '<TaskState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'requestCreateTime)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'requestCreateTime) (cl:floor (cl:slot-value msg 'requestCreateTime)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'runTime)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'runTime) (cl:floor (cl:slot-value msg 'runTime)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'loadTime)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'loadTime) (cl:floor (cl:slot-value msg 'loadTime)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'unloadTime)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'unloadTime) (cl:floor (cl:slot-value msg 'unloadTime)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'estimatedDuration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'estimatedDuration) (cl:floor (cl:slot-value msg 'estimatedDuration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'package) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sourceTray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sourceTray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sourceTray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sourceTray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'targetTray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'targetTray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'targetTray)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'targetTray)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskState>) istream)
  "Deserializes a message object of type '<TaskState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'requestCreateTime) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'runTime) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'loadTime) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unloadTime) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'estimatedDuration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'package) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sourceTray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sourceTray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sourceTray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sourceTray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'targetTray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'targetTray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'targetTray)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'targetTray)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskState>)))
  "Returns string type for a message object of type '<TaskState>"
  "auto_smart_factory/TaskState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskState)))
  "Returns string type for a message object of type 'TaskState"
  "auto_smart_factory/TaskState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskState>)))
  "Returns md5sum for a message object of type '<TaskState>"
  "b2297c0e49c8c648ed6360e170926b8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskState)))
  "Returns md5sum for a message object of type 'TaskState"
  "b2297c0e49c8c648ed6360e170926b8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskState>)))
  "Returns full string definition for message of type '<TaskState>"
  (cl:format cl:nil "# unique task id~%uint32 id~%~%# the state of the task. Valid values: 'initialized', 'running', 'waiting for package', ...~%string status~%~%# timings (0 if not yet set)~%~%# time when the associated request was created~%time requestCreateTime~%~%# timestamp when the task was started~%time runTime~%~%# timestamp when the load was acknowledged~%time loadTime~%~%# timestamp when the unload was acknowledged~%time unloadTime~%~%# estimated duration from run to unload estimated by the roadmap planner~%duration estimatedDuration~%~%# task data~%~%# id of the assigned robot~%string robot~%~%# Package this task is dealing with.~%Package package~%~%# The source and the target of this task~%uint32 sourceTray~%uint32 targetTray~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskState)))
  "Returns full string definition for message of type 'TaskState"
  (cl:format cl:nil "# unique task id~%uint32 id~%~%# the state of the task. Valid values: 'initialized', 'running', 'waiting for package', ...~%string status~%~%# timings (0 if not yet set)~%~%# time when the associated request was created~%time requestCreateTime~%~%# timestamp when the task was started~%time runTime~%~%# timestamp when the load was acknowledged~%time loadTime~%~%# timestamp when the unload was acknowledged~%time unloadTime~%~%# estimated duration from run to unload estimated by the roadmap planner~%duration estimatedDuration~%~%# task data~%~%# id of the assigned robot~%string robot~%~%# Package this task is dealing with.~%Package package~%~%# The source and the target of this task~%uint32 sourceTray~%uint32 targetTray~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskState>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'status))
     8
     8
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'robot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'package))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskState>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskState
    (cl:cons ':id (id msg))
    (cl:cons ':status (status msg))
    (cl:cons ':requestCreateTime (requestCreateTime msg))
    (cl:cons ':runTime (runTime msg))
    (cl:cons ':loadTime (loadTime msg))
    (cl:cons ':unloadTime (unloadTime msg))
    (cl:cons ':estimatedDuration (estimatedDuration msg))
    (cl:cons ':robot (robot msg))
    (cl:cons ':package (package msg))
    (cl:cons ':sourceTray (sourceTray msg))
    (cl:cons ':targetTray (targetTray msg))
))
