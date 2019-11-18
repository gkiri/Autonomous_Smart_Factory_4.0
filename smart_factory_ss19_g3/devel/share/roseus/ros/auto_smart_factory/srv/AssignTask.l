;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::AssignTask)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'AssignTask (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::ASSIGNTASK")
  (make-package "AUTO_SMART_FACTORY::ASSIGNTASK"))
(unless (find-package "AUTO_SMART_FACTORY::ASSIGNTASKREQUEST")
  (make-package "AUTO_SMART_FACTORY::ASSIGNTASKREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::ASSIGNTASKRESPONSE")
  (make-package "AUTO_SMART_FACTORY::ASSIGNTASKRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::AssignTaskRequest
  :super ros::object
  :slots (_task_id _input_tray _storage_tray ))

(defmethod auto_smart_factory::AssignTaskRequest
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:input_tray __input_tray) 0)
    ((:storage_tray __storage_tray) 0)
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _input_tray (round __input_tray))
   (setq _storage_tray (round __storage_tray))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:input_tray
   (&optional __input_tray)
   (if __input_tray (setq _input_tray __input_tray)) _input_tray)
  (:storage_tray
   (&optional __storage_tray)
   (if __storage_tray (setq _storage_tray __storage_tray)) _storage_tray)
  (:serialization-length
   ()
   (+
    ;; uint32 _task_id
    4
    ;; uint32 _input_tray
    4
    ;; uint32 _storage_tray
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _task_id
       (write-long _task_id s)
     ;; uint32 _input_tray
       (write-long _input_tray s)
     ;; uint32 _storage_tray
       (write-long _storage_tray s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _input_tray
     (setq _input_tray (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _storage_tray
     (setq _storage_tray (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass auto_smart_factory::AssignTaskResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::AssignTaskResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass auto_smart_factory::AssignTask
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::AssignTask :md5sum-) "0c82659e0ca2d9d96ef532df87b96bb0")
(setf (get auto_smart_factory::AssignTask :datatype-) "auto_smart_factory/AssignTask")
(setf (get auto_smart_factory::AssignTask :request) auto_smart_factory::AssignTaskRequest)
(setf (get auto_smart_factory::AssignTask :response) auto_smart_factory::AssignTaskResponse)

(defmethod auto_smart_factory::AssignTaskRequest
  (:response () (instance auto_smart_factory::AssignTaskResponse :init)))

(setf (get auto_smart_factory::AssignTaskRequest :md5sum-) "0c82659e0ca2d9d96ef532df87b96bb0")
(setf (get auto_smart_factory::AssignTaskRequest :datatype-) "auto_smart_factory/AssignTaskRequest")
(setf (get auto_smart_factory::AssignTaskRequest :definition-)
      "uint32 task_id
uint32 input_tray
uint32 storage_tray
---
bool success

")

(setf (get auto_smart_factory::AssignTaskResponse :md5sum-) "0c82659e0ca2d9d96ef532df87b96bb0")
(setf (get auto_smart_factory::AssignTaskResponse :datatype-) "auto_smart_factory/AssignTaskResponse")
(setf (get auto_smart_factory::AssignTaskResponse :definition-)
      "uint32 task_id
uint32 input_tray
uint32 storage_tray
---
bool success

")



(provide :auto_smart_factory/AssignTask "0c82659e0ca2d9d96ef532df87b96bb0")


