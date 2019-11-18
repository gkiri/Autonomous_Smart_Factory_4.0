;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::StorePackage)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'StorePackage (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::STOREPACKAGE")
  (make-package "AUTO_SMART_FACTORY::STOREPACKAGE"))
(unless (find-package "AUTO_SMART_FACTORY::STOREPACKAGEREQUEST")
  (make-package "AUTO_SMART_FACTORY::STOREPACKAGEREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::STOREPACKAGERESPONSE")
  (make-package "AUTO_SMART_FACTORY::STOREPACKAGERESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::StorePackageRequest
  :super ros::object
  :slots (_task_id _input_tray_ids _storage_tray_ids ))

(defmethod auto_smart_factory::StorePackageRequest
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:input_tray_ids __input_tray_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:storage_tray_ids __storage_tray_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _input_tray_ids __input_tray_ids)
   (setq _storage_tray_ids __storage_tray_ids)
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:input_tray_ids
   (&optional __input_tray_ids)
   (if __input_tray_ids (setq _input_tray_ids __input_tray_ids)) _input_tray_ids)
  (:storage_tray_ids
   (&optional __storage_tray_ids)
   (if __storage_tray_ids (setq _storage_tray_ids __storage_tray_ids)) _storage_tray_ids)
  (:serialization-length
   ()
   (+
    ;; uint32 _task_id
    4
    ;; uint32[] _input_tray_ids
    (* 4    (length _input_tray_ids)) 4
    ;; uint32[] _storage_tray_ids
    (* 4    (length _storage_tray_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _task_id
       (write-long _task_id s)
     ;; uint32[] _input_tray_ids
     (write-long (length _input_tray_ids) s)
     (dotimes (i (length _input_tray_ids))
       (write-long (elt _input_tray_ids i) s)
       )
     ;; uint32[] _storage_tray_ids
     (write-long (length _storage_tray_ids) s)
     (dotimes (i (length _storage_tray_ids))
       (write-long (elt _storage_tray_ids i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _input_tray_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _input_tray_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _input_tray_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _storage_tray_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _storage_tray_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _storage_tray_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass auto_smart_factory::StorePackageResponse
  :super ros::object
  :slots (_storage_id _estimated_time ))

(defmethod auto_smart_factory::StorePackageResponse
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

(defclass auto_smart_factory::StorePackage
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::StorePackage :md5sum-) "67e49e41b5ecafbc04ac8d70094ced2e")
(setf (get auto_smart_factory::StorePackage :datatype-) "auto_smart_factory/StorePackage")
(setf (get auto_smart_factory::StorePackage :request) auto_smart_factory::StorePackageRequest)
(setf (get auto_smart_factory::StorePackage :response) auto_smart_factory::StorePackageResponse)

(defmethod auto_smart_factory::StorePackageRequest
  (:response () (instance auto_smart_factory::StorePackageResponse :init)))

(setf (get auto_smart_factory::StorePackageRequest :md5sum-) "67e49e41b5ecafbc04ac8d70094ced2e")
(setf (get auto_smart_factory::StorePackageRequest :datatype-) "auto_smart_factory/StorePackageRequest")
(setf (get auto_smart_factory::StorePackageRequest :definition-)
      "uint32 task_id
uint32[] input_tray_ids
uint32[] storage_tray_ids
---
uint32 storage_id
float64 estimated_time

")

(setf (get auto_smart_factory::StorePackageResponse :md5sum-) "67e49e41b5ecafbc04ac8d70094ced2e")
(setf (get auto_smart_factory::StorePackageResponse :datatype-) "auto_smart_factory/StorePackageResponse")
(setf (get auto_smart_factory::StorePackageResponse :definition-)
      "uint32 task_id
uint32[] input_tray_ids
uint32[] storage_tray_ids
---
uint32 storage_id
float64 estimated_time

")



(provide :auto_smart_factory/StorePackage "67e49e41b5ecafbc04ac8d70094ced2e")


