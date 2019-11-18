;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::TaskState)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'TaskState (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::TASKSTATE")
  (make-package "AUTO_SMART_FACTORY::TASKSTATE"))

(in-package "ROS")
;;//! \htmlinclude TaskState.msg.html


(defclass auto_smart_factory::TaskState
  :super ros::object
  :slots (_id _status _requestCreateTime _runTime _loadTime _unloadTime _estimatedDuration _robot _package _sourceTray _targetTray ))

(defmethod auto_smart_factory::TaskState
  (:init
   (&key
    ((:id __id) 0)
    ((:status __status) "")
    ((:requestCreateTime __requestCreateTime) (instance ros::time :init))
    ((:runTime __runTime) (instance ros::time :init))
    ((:loadTime __loadTime) (instance ros::time :init))
    ((:unloadTime __unloadTime) (instance ros::time :init))
    ((:estimatedDuration __estimatedDuration) (instance ros::time :init))
    ((:robot __robot) "")
    ((:package __package) (instance auto_smart_factory::Package :init))
    ((:sourceTray __sourceTray) 0)
    ((:targetTray __targetTray) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _status (string __status))
   (setq _requestCreateTime __requestCreateTime)
   (setq _runTime __runTime)
   (setq _loadTime __loadTime)
   (setq _unloadTime __unloadTime)
   (setq _estimatedDuration __estimatedDuration)
   (setq _robot (string __robot))
   (setq _package __package)
   (setq _sourceTray (round __sourceTray))
   (setq _targetTray (round __targetTray))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:requestCreateTime
   (&optional __requestCreateTime)
   (if __requestCreateTime (setq _requestCreateTime __requestCreateTime)) _requestCreateTime)
  (:runTime
   (&optional __runTime)
   (if __runTime (setq _runTime __runTime)) _runTime)
  (:loadTime
   (&optional __loadTime)
   (if __loadTime (setq _loadTime __loadTime)) _loadTime)
  (:unloadTime
   (&optional __unloadTime)
   (if __unloadTime (setq _unloadTime __unloadTime)) _unloadTime)
  (:estimatedDuration
   (&optional __estimatedDuration)
   (if __estimatedDuration (setq _estimatedDuration __estimatedDuration)) _estimatedDuration)
  (:robot
   (&optional __robot)
   (if __robot (setq _robot __robot)) _robot)
  (:package
   (&rest __package)
   (if (keywordp (car __package))
       (send* _package __package)
     (progn
       (if __package (setq _package (car __package)))
       _package)))
  (:sourceTray
   (&optional __sourceTray)
   (if __sourceTray (setq _sourceTray __sourceTray)) _sourceTray)
  (:targetTray
   (&optional __targetTray)
   (if __targetTray (setq _targetTray __targetTray)) _targetTray)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; string _status
    4 (length _status)
    ;; time _requestCreateTime
    8
    ;; time _runTime
    8
    ;; time _loadTime
    8
    ;; time _unloadTime
    8
    ;; duration _estimatedDuration
    8
    ;; string _robot
    4 (length _robot)
    ;; auto_smart_factory/Package _package
    (send _package :serialization-length)
    ;; uint32 _sourceTray
    4
    ;; uint32 _targetTray
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; time _requestCreateTime
       (write-long (send _requestCreateTime :sec) s) (write-long (send _requestCreateTime :nsec) s)
     ;; time _runTime
       (write-long (send _runTime :sec) s) (write-long (send _runTime :nsec) s)
     ;; time _loadTime
       (write-long (send _loadTime :sec) s) (write-long (send _loadTime :nsec) s)
     ;; time _unloadTime
       (write-long (send _unloadTime :sec) s) (write-long (send _unloadTime :nsec) s)
     ;; duration _estimatedDuration
       (write-long (send _estimatedDuration :sec) s) (write-long (send _estimatedDuration :nsec) s)
     ;; string _robot
       (write-long (length _robot) s) (princ _robot s)
     ;; auto_smart_factory/Package _package
       (send _package :serialize s)
     ;; uint32 _sourceTray
       (write-long _sourceTray s)
     ;; uint32 _targetTray
       (write-long _targetTray s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _requestCreateTime
     (send _requestCreateTime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _requestCreateTime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _runTime
     (send _runTime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _runTime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _loadTime
     (send _loadTime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _loadTime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _unloadTime
     (send _unloadTime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _unloadTime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _estimatedDuration
     (send _estimatedDuration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _estimatedDuration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _robot
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; auto_smart_factory/Package _package
     (send _package :deserialize buf ptr-) (incf ptr- (send _package :serialization-length))
   ;; uint32 _sourceTray
     (setq _sourceTray (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _targetTray
     (setq _targetTray (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get auto_smart_factory::TaskState :md5sum-) "b2297c0e49c8c648ed6360e170926b8d")
(setf (get auto_smart_factory::TaskState :datatype-) "auto_smart_factory/TaskState")
(setf (get auto_smart_factory::TaskState :definition-)
      "# unique task id
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



(provide :auto_smart_factory/TaskState "b2297c0e49c8c648ed6360e170926b8d")


