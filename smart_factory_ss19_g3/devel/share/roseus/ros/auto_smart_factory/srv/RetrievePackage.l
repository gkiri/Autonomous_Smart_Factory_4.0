;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::RetrievePackage)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'RetrievePackage (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::RETRIEVEPACKAGE")
  (make-package "AUTO_SMART_FACTORY::RETRIEVEPACKAGE"))
(unless (find-package "AUTO_SMART_FACTORY::RETRIEVEPACKAGEREQUEST")
  (make-package "AUTO_SMART_FACTORY::RETRIEVEPACKAGEREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::RETRIEVEPACKAGERESPONSE")
  (make-package "AUTO_SMART_FACTORY::RETRIEVEPACKAGERESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::RetrievePackageRequest
  :super ros::object
  :slots (_task_id _storage_tray_ids _output_tray_ids ))

(defmethod auto_smart_factory::RetrievePackageRequest
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:storage_tray_ids __storage_tray_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:output_tray_ids __output_tray_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _storage_tray_ids __storage_tray_ids)
   (setq _output_tray_ids __output_tray_ids)
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:storage_tray_ids
   (&optional __storage_tray_ids)
   (if __storage_tray_ids (setq _storage_tray_ids __storage_tray_ids)) _storage_tray_ids)
  (:output_tray_ids
   (&optional __output_tray_ids)
   (if __output_tray_ids (setq _output_tray_ids __output_tray_ids)) _output_tray_ids)
  (:serialization-length
   ()
   (+
    ;; uint32 _task_id
    4
    ;; uint32[] _storage_tray_ids
    (* 4    (length _storage_tray_ids)) 4
    ;; uint32[] _output_tray_ids
    (* 4    (length _output_tray_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _task_id
       (write-long _task_id s)
     ;; uint32[] _storage_tray_ids
     (write-long (length _storage_tray_ids) s)
     (dotimes (i (length _storage_tray_ids))
       (write-long (elt _storage_tray_ids i) s)
       )
     ;; uint32[] _output_tray_ids
     (write-long (length _output_tray_ids) s)
     (dotimes (i (length _output_tray_ids))
       (write-long (elt _output_tray_ids i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _storage_tray_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _storage_tray_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _storage_tray_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _output_tray_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _output_tray_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _output_tray_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass auto_smart_factory::RetrievePackageResponse
  :super ros::object
  :slots (_storage_id _estimated_time ))

(defmethod auto_smart_factory::RetrievePackageResponse
  (:init
   (&key
    ((:storage_id __storage_id) 0)
    ((:estimated_time __estimated_time) 0.0)
    )
   (send-super :init)
   (setq _storage_id (round __storage_id))
   (setq _estimated_time (float __estimated_time))
   self)
  (:storage_id
   (&optional __storage_id)
   (if __storage_id (setq _storage_id __storage_id)) _storage_id)
  (:estimated_time
   (&optional __estimated_time)
   (if __estimated_time (setq _estimated_time __estimated_time)) _estimated_time)
  (:serialization-length
   ()
   (+
    ;; uint32 _storage_id
    4
    ;; float64 _estimated_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _storage_id
       (write-long _storage_id s)
     ;; float64 _estimated_time
       (sys::poke _estimated_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _storage_id
     (setq _storage_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _estimated_time
     (setq _estimated_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass auto_smart_factory::RetrievePackage
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::RetrievePackage :md5sum-) "e43717cc6bfa4923c8b070370e484aeb")
(setf (get auto_smart_factory::RetrievePackage :datatype-) "auto_smart_factory/RetrievePackage")
(setf (get auto_smart_factory::RetrievePackage :request) auto_smart_factory::RetrievePackageRequest)
(setf (get auto_smart_factory::RetrievePackage :response) auto_smart_factory::RetrievePackageResponse)

(defmethod auto_smart_factory::RetrievePackageRequest
  (:response () (instance auto_smart_factory::RetrievePackageResponse :init)))

(setf (get auto_smart_factory::RetrievePackageRequest :md5sum-) "e43717cc6bfa4923c8b070370e484aeb")
(setf (get auto_smart_factory::RetrievePackageRequest :datatype-) "auto_smart_factory/RetrievePackageRequest")
(setf (get auto_smart_factory::RetrievePackageRequest :definition-)
      "uint32 task_id
uint32[] storage_tray_ids
uint32[] output_tray_ids
---
uint32 storage_id
float64 estimated_time

")

(setf (get auto_smart_factory::RetrievePackageResponse :md5sum-) "e43717cc6bfa4923c8b070370e484aeb")
(setf (get auto_smart_factory::RetrievePackageResponse :datatype-) "auto_smart_factory/RetrievePackageResponse")
(setf (get auto_smart_factory::RetrievePackageResponse :definition-)
      "uint32 task_id
uint32[] storage_tray_ids
uint32[] output_tray_ids
---
uint32 storage_id
float64 estimated_time

")



(provide :auto_smart_factory/RetrievePackage "e43717cc6bfa4923c8b070370e484aeb")


