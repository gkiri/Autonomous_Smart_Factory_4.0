;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::TaskPlannerState)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'TaskPlannerState (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::TASKPLANNERSTATE")
  (make-package "AUTO_SMART_FACTORY::TASKPLANNERSTATE"))

(in-package "ROS")
;;//! \htmlinclude TaskPlannerState.msg.html


(defclass auto_smart_factory::TaskPlannerState
  :super ros::object
  :slots (_stamp _registered_robots _requests _tasks ))

(defmethod auto_smart_factory::TaskPlannerState
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:registered_robots __registered_robots) 0)
    ((:requests __requests) (let (r) (dotimes (i 0) (push (instance auto_smart_factory::RequestStatus :init) r)) r))
    ((:tasks __tasks) (let (r) (dotimes (i 0) (push (instance auto_smart_factory::TaskState :init) r)) r))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _registered_robots (round __registered_robots))
   (setq _requests __requests)
   (setq _tasks __tasks)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:registered_robots
   (&optional __registered_robots)
   (if __registered_robots (setq _registered_robots __registered_robots)) _registered_robots)
  (:requests
   (&rest __requests)
   (if (keywordp (car __requests))
       (send* _requests __requests)
     (progn
       (if __requests (setq _requests (car __requests)))
       _requests)))
  (:tasks
   (&rest __tasks)
   (if (keywordp (car __tasks))
       (send* _tasks __tasks)
     (progn
       (if __tasks (setq _tasks (car __tasks)))
       _tasks)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint32 _registered_robots
    4
    ;; auto_smart_factory/RequestStatus[] _requests
    (apply #'+ (send-all _requests :serialization-length)) 4
    ;; auto_smart_factory/TaskState[] _tasks
    (apply #'+ (send-all _tasks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint32 _registered_robots
       (write-long _registered_robots s)
     ;; auto_smart_factory/RequestStatus[] _requests
     (write-long (length _requests) s)
     (dolist (elem _requests)
       (send elem :serialize s)
       )
     ;; auto_smart_factory/TaskState[] _tasks
     (write-long (length _tasks) s)
     (dolist (elem _tasks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _registered_robots
     (setq _registered_robots (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; auto_smart_factory/RequestStatus[] _requests
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _requests (let (r) (dotimes (i n) (push (instance auto_smart_factory::RequestStatus :init) r)) r))
     (dolist (elem- _requests)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; auto_smart_factory/TaskState[] _tasks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tasks (let (r) (dotimes (i n) (push (instance auto_smart_factory::TaskState :init) r)) r))
     (dolist (elem- _tasks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get auto_smart_factory::TaskPlannerState :md5sum-) "d68409037940351182a0a455e9df6526")
(setf (get auto_smart_factory::TaskPlannerState :datatype-) "auto_smart_factory/TaskPlannerState")
(setf (get auto_smart_factory::TaskPlannerState :definition-)
      "time stamp

# number of registered robots
uint32 registered_robots

# States of the current requests
RequestStatus[] requests

# states of the current tasks
TaskState[] tasks


================================================================================
MSG: auto_smart_factory/RequestStatus
# time stamp for this status message
time stamp

# id of this request
uint32 id

# type of request. This is either 'input' or 'output'
string type

# the package type
PackageConfiguration pkg_config

# time when this request was created
time create_time

# message describing the current status of this request
string status


================================================================================
MSG: auto_smart_factory/PackageConfiguration
# package type id (!= package id)
uint32 id

# package dimensions
float32 width
float32 height

# package weight
float32 weight


================================================================================
MSG: auto_smart_factory/TaskState
# unique task id
uint32 id

# the state of the task. Valid values: 'initialized', 'running', 'waiting for package', ...
string status

# timings (0 if not yet set)

# time when the associated request was created
time requestCreateTime

# timestamp when the task was started
time runTime

# timestamp when the load was acknowledged
time loadTime

# timestamp when the unload was acknowledged
time unloadTime

# estimated duration from run to unload estimated by the roadmap planner
duration estimatedDuration

# task data

# id of the assigned robot
string robot

# Package this task is dealing with.
Package package

# The source and the target of this task
uint32 sourceTray
uint32 targetTray


================================================================================
MSG: auto_smart_factory/Package
# the unique id of this package
uint32 id

# the id of the package type/configuration
uint32 type_id


")



(provide :auto_smart_factory/TaskPlannerState "d68409037940351182a0a455e9df6526")


