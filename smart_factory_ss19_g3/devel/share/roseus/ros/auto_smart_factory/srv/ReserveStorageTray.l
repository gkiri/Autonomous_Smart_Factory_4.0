;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::ReserveStorageTray)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'ReserveStorageTray (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::RESERVESTORAGETRAY")
  (make-package "AUTO_SMART_FACTORY::RESERVESTORAGETRAY"))
(unless (find-package "AUTO_SMART_FACTORY::RESERVESTORAGETRAYREQUEST")
  (make-package "AUTO_SMART_FACTORY::RESERVESTORAGETRAYREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::RESERVESTORAGETRAYRESPONSE")
  (make-package "AUTO_SMART_FACTORY::RESERVESTORAGETRAYRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::ReserveStorageTrayRequest
  :super ros::object
  :slots (_id ))

(defmethod auto_smart_factory::ReserveStorageTrayRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass auto_smart_factory::ReserveStorageTrayResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::ReserveStorageTrayResponse
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

(defclass auto_smart_factory::ReserveStorageTray
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::ReserveStorageTray :md5sum-) "cff94141438e379e473614d183c5f213")
(setf (get auto_smart_factory::ReserveStorageTray :datatype-) "auto_smart_factory/ReserveStorageTray")
(setf (get auto_smart_factory::ReserveStorageTray :request) auto_smart_factory::ReserveStorageTrayRequest)
(setf (get auto_smart_factory::ReserveStorageTray :response) auto_smart_factory::ReserveStorageTrayResponse)

(defmethod auto_smart_factory::ReserveStorageTrayRequest
  (:response () (instance auto_smart_factory::ReserveStorageTrayResponse :init)))

(setf (get auto_smart_factory::ReserveStorageTrayRequest :md5sum-) "cff94141438e379e473614d183c5f213")
(setf (get auto_smart_factory::ReserveStorageTrayRequest :datatype-) "auto_smart_factory/ReserveStorageTrayRequest")
(setf (get auto_smart_factory::ReserveStorageTrayRequest :definition-)
      "
uint32 id
---

bool success

")

(setf (get auto_smart_factory::ReserveStorageTrayResponse :md5sum-) "cff94141438e379e473614d183c5f213")
(setf (get auto_smart_factory::ReserveStorageTrayResponse :datatype-) "auto_smart_factory/ReserveStorageTrayResponse")
(setf (get auto_smart_factory::ReserveStorageTrayResponse :definition-)
      "
uint32 id
---

bool success

")



(provide :auto_smart_factory/ReserveStorageTray "cff94141438e379e473614d183c5f213")


