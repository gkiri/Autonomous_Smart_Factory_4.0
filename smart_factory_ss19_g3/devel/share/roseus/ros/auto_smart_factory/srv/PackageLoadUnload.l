;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::PackageLoadUnload)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'PackageLoadUnload (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::PACKAGELOADUNLOAD")
  (make-package "AUTO_SMART_FACTORY::PACKAGELOADUNLOAD"))
(unless (find-package "AUTO_SMART_FACTORY::PACKAGELOADUNLOADREQUEST")
  (make-package "AUTO_SMART_FACTORY::PACKAGELOADUNLOADREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::PACKAGELOADUNLOADRESPONSE")
  (make-package "AUTO_SMART_FACTORY::PACKAGELOADUNLOADRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::PackageLoadUnloadRequest
  :super ros::object
  :slots (_load ))

(defmethod auto_smart_factory::PackageLoadUnloadRequest
  (:init
   (&key
    ((:load __load) nil)
    )
   (send-super :init)
   (setq _load __load)
   self)
  (:load
   (&optional __load)
   (if __load (setq _load __load)) _load)
  (:serialization-length
   ()
   (+
    ;; bool _load
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _load
       (if _load (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _load
     (setq _load (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass auto_smart_factory::PackageLoadUnloadResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::PackageLoadUnloadResponse
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

(defclass auto_smart_factory::PackageLoadUnload
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::PackageLoadUnload :md5sum-) "c4d3a214c65f27f5df9ff54dfe5d21d2")
(setf (get auto_smart_factory::PackageLoadUnload :datatype-) "auto_smart_factory/PackageLoadUnload")
(setf (get auto_smart_factory::PackageLoadUnload :request) auto_smart_factory::PackageLoadUnloadRequest)
(setf (get auto_smart_factory::PackageLoadUnload :response) auto_smart_factory::PackageLoadUnloadResponse)

(defmethod auto_smart_factory::PackageLoadUnloadRequest
  (:response () (instance auto_smart_factory::PackageLoadUnloadResponse :init)))

(setf (get auto_smart_factory::PackageLoadUnloadRequest :md5sum-) "c4d3a214c65f27f5df9ff54dfe5d21d2")
(setf (get auto_smart_factory::PackageLoadUnloadRequest :datatype-) "auto_smart_factory/PackageLoadUnloadRequest")
(setf (get auto_smart_factory::PackageLoadUnloadRequest :definition-)
      "bool load
---
bool success

")

(setf (get auto_smart_factory::PackageLoadUnloadResponse :md5sum-) "c4d3a214c65f27f5df9ff54dfe5d21d2")
(setf (get auto_smart_factory::PackageLoadUnloadResponse :datatype-) "auto_smart_factory/PackageLoadUnloadResponse")
(setf (get auto_smart_factory::PackageLoadUnloadResponse :definition-)
      "bool load
---
bool success

")



(provide :auto_smart_factory/PackageLoadUnload "c4d3a214c65f27f5df9ff54dfe5d21d2")


