; Auto-generated. Do not edit!


(cl:in-package auto_smart_factory-msg)


;//! \htmlinclude TaskPlannerState.msg.html

(cl:defclass <TaskPlannerState> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (registered_robots
    :reader registered_robots
    :initarg :registered_robots
    :type cl:integer
    :initform 0)
   (requests
    :reader requests
    :initarg :requests
    :type (cl:vector auto_smart_factory-msg:RequestStatus)
   :initform (cl:make-array 0 :element-type 'auto_smart_factory-msg:RequestStatus :initial-element (cl:make-instance 'auto_smart_factory-msg:RequestStatus)))
   (tasks
    :reader tasks
    :initarg :tasks
    :type (cl:vector auto_smart_factory-msg:TaskState)
   :initform (cl:make-array 0 :element-type 'auto_smart_factory-msg:TaskState :initial-element (cl:make-instance 'auto_smart_factory-msg:TaskState))))
)

(cl:defclass TaskPlannerState (<TaskPlannerState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskPlannerState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskPlannerState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_smart_factory-msg:<TaskPlannerState> is deprecated: use auto_smart_factory-msg:TaskPlannerState instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <TaskPlannerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:stamp-val is deprecated.  Use auto_smart_factory-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'registered_robots-val :lambda-list '(m))
(cl:defmethod registered_robots-val ((m <TaskPlannerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:registered_robots-val is deprecated.  Use auto_smart_factory-msg:registered_robots instead.")
  (registered_robots m))

(cl:ensure-generic-function 'requests-val :lambda-list '(m))
(cl:defmethod requests-val ((m <TaskPlannerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:requests-val is deprecated.  Use auto_smart_factory-msg:requests instead.")
  (requests m))

(cl:ensure-generic-function 'tasks-val :lambda-list '(m))
(cl:defmethod tasks-val ((m <TaskPlannerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_smart_factory-msg:tasks-val is deprecated.  Use auto_smart_factory-msg:tasks instead.")
  (tasks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskPlannerState>) ostream)
  "Serializes a message object of type '<TaskPlannerState>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'registered_robots)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'registered_robots)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'registered_robots)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'registered_robots)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'requests))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'requests))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tasks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tasks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskPlannerState>) istream)
  "Deserializes a message object of type '<TaskPlannerState>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'registered_robots)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'registered_robots)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'registered_robots)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'registered_robots)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'requests) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'requests)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auto_smart_factory-msg:RequestStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tasks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tasks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auto_smart_factory-msg:TaskState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskPlannerState>)))
  "Returns string type for a message object of type '<TaskPlannerState>"
  "auto_smart_factory/TaskPlannerState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskPlannerState)))
  "Returns string type for a message object of type 'TaskPlannerState"
  "auto_smart_factory/TaskPlannerState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskPlannerState>)))
  "Returns md5sum for a message object of type '<TaskPlannerState>"
  "d68409037940351182a0a455e9df6526")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskPlannerState)))
  "Returns md5sum for a message object of type 'TaskPlannerState"
  "d68409037940351182a0a455e9df6526")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskPlannerState>)))
  "Returns full string definition for message of type '<TaskPlannerState>"
  (cl:format cl:nil "time stamp~%~%# number of registered robots~%uint32 registered_robots~%~%# States of the current requests~%RequestStatus[] requests~%~%# states of the current tasks~%TaskState[] tasks~%~%~%================================================================================~%MSG: auto_smart_factory/RequestStatus~%# time stamp for this status message~%time stamp~%~%# id of this request~%uint32 id~%~%# type of request. This is either 'input' or 'output'~%string type~%~%# the package type~%PackageConfiguration pkg_config~%~%# time when this request was created~%time create_time~%~%# message describing the current status of this request~%string status~%~%~%================================================================================~%MSG: auto_smart_factory/PackageConfiguration~%# package type id (!= package id)~%uint32 id~%~%# package dimensions~%float32 width~%float32 height~%~%# package weight~%float32 weight~%~%~%================================================================================~%MSG: auto_smart_factory/TaskState~%# unique task id~%uint32 id~%~%# the state of the task. Valid values: 'initialized', 'running', 'waiting for package', ...~%string status~%~%# timings (0 if not yet set)~%~%# time when the associated request was created~%time requestCreateTime~%~%# timestamp when the task was started~%time runTime~%~%# timestamp when the load was acknowledged~%time loadTime~%~%# timestamp when the unload was acknowledged~%time unloadTime~%~%# estimated duration from run to unload estimated by the roadmap planner~%duration estimatedDuration~%~%# task data~%~%# id of the assigned robot~%string robot~%~%# Package this task is dealing with.~%Package package~%~%# The source and the target of this task~%uint32 sourceTray~%uint32 targetTray~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskPlannerState)))
  "Returns full string definition for message of type 'TaskPlannerState"
  (cl:format cl:nil "time stamp~%~%# number of registered robots~%uint32 registered_robots~%~%# States of the current requests~%RequestStatus[] requests~%~%# states of the current tasks~%TaskState[] tasks~%~%~%================================================================================~%MSG: auto_smart_factory/RequestStatus~%# time stamp for this status message~%time stamp~%~%# id of this request~%uint32 id~%~%# type of request. This is either 'input' or 'output'~%string type~%~%# the package type~%PackageConfiguration pkg_config~%~%# time when this request was created~%time create_time~%~%# message describing the current status of this request~%string status~%~%~%================================================================================~%MSG: auto_smart_factory/PackageConfiguration~%# package type id (!= package id)~%uint32 id~%~%# package dimensions~%float32 width~%float32 height~%~%# package weight~%float32 weight~%~%~%================================================================================~%MSG: auto_smart_factory/TaskState~%# unique task id~%uint32 id~%~%# the state of the task. Valid values: 'initialized', 'running', 'waiting for package', ...~%string status~%~%# timings (0 if not yet set)~%~%# time when the associated request was created~%time requestCreateTime~%~%# timestamp when the task was started~%time runTime~%~%# timestamp when the load was acknowledged~%time loadTime~%~%# timestamp when the unload was acknowledged~%time unloadTime~%~%# estimated duration from run to unload estimated by the roadmap planner~%duration estimatedDuration~%~%# task data~%~%# id of the assigned robot~%string robot~%~%# Package this task is dealing with.~%Package package~%~%# The source and the target of this task~%uint32 sourceTray~%uint32 targetTray~%~%~%================================================================================~%MSG: auto_smart_factory/Package~%# the unique id of this package~%uint32 id~%~%# the id of the package type/configuration~%uint32 type_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskPlannerState>))
  (cl:+ 0
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'requests) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tasks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskPlannerState>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskPlannerState
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':registered_robots (registered_robots msg))
    (cl:cons ':requests (requests msg))
    (cl:cons ':tasks (tasks msg))
))
