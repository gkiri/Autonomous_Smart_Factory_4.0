;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::AssignChargingTask)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'AssignChargingTask (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::ASSIGNCHARGINGTASK")
  (make-package "AUTO_SMART_FACTORY::ASSIGNCHARGINGTASK"))
(unless (find-package "AUTO_SMART_FACTORY::ASSIGNCHARGINGTASKREQUEST")
  (make-package "AUTO_SMART_FACTORY::ASSIGNCHARGINGTASKREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::ASSIGNCHARGINGTASKRESPONSE")
  (make-package "AUTO_SMART_FACTORY::ASSIGNCHARGINGTASKRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::AssignChargingTaskRequest
  :super ros::object
  :slots (_tray_id _end ))

(defmethod auto_smart_factory::AssignChargingTaskRequest
  (:init
   (&key
    ((:tray_id __tray_id) 0)
    ((:end __end) nil)
    )
   (send-super :init)
   (setq _tray_id (round __tray_id))
   (setq _end __end)
   self)
  (:tray_id
   (&optional __tray_id)
   (if __tray_id (setq _tray_id __tray_id)) _tray_id)
  (:end
   (&optional __end)
   (if __end (setq _end __end)) _end)
  (:serialization-length
   ()
   (+
    ;; uint32 _tray_id
    4
    ;; bool _end
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _tray_id
       (write-long _tray_id s)
     ;; bool _end
       (if _end (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _tray_id
     (setq _tray_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _end
     (setq _end (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass auto_smart_factory::AssignChargingTaskResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::AssignChargingTaskResponse
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

(defclass auto_smart_factory::AssignChargingTask
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::AssignChargingTask :md5sum-) "dd6c73c96eadb2e66af831949e40763a")
(setf (get auto_smart_factory::AssignChargingTask :datatype-) "auto_smart_factory/AssignChargingTask")
(setf (get auto_smart_factory::AssignChargingTask :request) auto_smart_factory::AssignChargingTaskRequest)
(setf (get auto_smart_factory::AssignChargingTask :response) auto_smart_factory::AssignChargingTaskResponse)

(defmethod auto_smart_factory::AssignChargingTaskRequest
  (:response () (instance auto_smart_factory::AssignChargingTaskResponse :init)))

(setf (get auto_smart_factory::AssignChargingTaskRequest :md5sum-) "dd6c73c96eadb2e66af831949e40763a")
(setf (get auto_smart_factory::AssignChargingTaskRequest :datatype-) "auto_smart_factory/AssignChargingTaskRequest")
(setf (get auto_smart_factory::AssignChargingTaskRequest :definition-)
      "uint32 tray_id
bool end
---
bool success


")

(setf (get auto_smart_factory::AssignChargingTaskResponse :md5sum-) "dd6c73c96eadb2e66af831949e40763a")
(setf (get auto_smart_factory::AssignChargingTaskResponse :datatype-) "auto_smart_factory/AssignChargingTaskResponse")
(setf (get auto_smart_factory::AssignChargingTaskResponse :definition-)
      "uint32 tray_id
bool end
---
bool success


")



(provide :auto_smart_factory/AssignChargingTask "dd6c73c96eadb2e66af831949e40763a")


