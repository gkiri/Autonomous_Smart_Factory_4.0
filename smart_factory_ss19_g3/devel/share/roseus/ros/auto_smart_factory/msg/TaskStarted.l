;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::TaskStarted)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'TaskStarted (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::TASKSTARTED")
  (make-package "AUTO_SMART_FACTORY::TASKSTARTED"))

(in-package "ROS")
;;//! \htmlinclude TaskStarted.msg.html


(defclass auto_smart_factory::TaskStarted
  :super ros::object
  :slots (_started _taskId ))

(defmethod auto_smart_factory::TaskStarted
  (:init
   (&key
    ((:started __started) nil)
    ((:taskId __taskId) 0)
    )
   (send-super :init)
   (setq _started __started)
   (setq _taskId (round __taskId))
   self)
  (:started
   (&optional __started)
   (if __started (setq _started __started)) _started)
  (:taskId
   (&optional __taskId)
   (if __taskId (setq _taskId __taskId)) _taskId)
  (:serialization-length
   ()
   (+
    ;; bool _started
    1
    ;; uint32 _taskId
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _started
       (if _started (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _taskId
       (write-long _taskId s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _started
     (setq _started (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _taskId
     (setq _taskId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get auto_smart_factory::TaskStarted :md5sum-) "c8c4bfc821df46bfcf49ec83e2835c26")
(setf (get auto_smart_factory::TaskStarted :datatype-) "auto_smart_factory/TaskStarted")
(setf (get auto_smart_factory::TaskStarted :definition-)
      "# message a robot sends to the task planner when it started a task from its queue

bool started
uint32 taskId
")



(provide :auto_smart_factory/TaskStarted "c8c4bfc821df46bfcf49ec83e2835c26")


