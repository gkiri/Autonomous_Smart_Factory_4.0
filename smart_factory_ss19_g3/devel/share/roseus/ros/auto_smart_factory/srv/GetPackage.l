;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::GetPackage)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'GetPackage (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::GETPACKAGE")
  (make-package "AUTO_SMART_FACTORY::GETPACKAGE"))
(unless (find-package "AUTO_SMART_FACTORY::GETPACKAGEREQUEST")
  (make-package "AUTO_SMART_FACTORY::GETPACKAGEREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::GETPACKAGERESPONSE")
  (make-package "AUTO_SMART_FACTORY::GETPACKAGERESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::GetPackageRequest
  :super ros::object
  :slots (_trayId ))

(defmethod auto_smart_factory::GetPackageRequest
  (:init
   (&key
    ((:trayId __trayId) 0)
    )
   (send-super :init)
   (setq _trayId (round __trayId))
   self)
  (:trayId
   (&optional __trayId)
   (if __trayId (setq _trayId __trayId)) _trayId)
  (:serialization-length
   ()
   (+
    ;; uint32 _trayId
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _trayId
       (write-long _trayId s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _trayId
     (setq _trayId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass auto_smart_factory::GetPackageResponse
  :super ros::object
  :slots (_pkg ))

(defmethod auto_smart_factory::GetPackageResponse
  (:init
   (&key
    ((:pkg __pkg) (instance auto_smart_factory::Package :init))
    )
   (send-super :init)
   (setq _pkg __pkg)
   self)
  (:pkg
   (&rest __pkg)
   (if (keywordp (car __pkg))
       (send* _pkg __pkg)
     (progn
       (if __pkg (setq _pkg (car __pkg)))
       _pkg)))
  (:serialization-length
   ()
   (+
    ;; auto_smart_factory/Package _pkg
    (send _pkg :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; auto_smart_factory/Package _pkg
       (send _pkg :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; auto_smart_factory/Package _pkg
     (send _pkg :deserialize buf ptr-) (incf ptr- (send _pkg :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::GetPackage
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::GetPackage :md5sum-) "a9957da21dd82923674226f14b0e4338")
(setf (get auto_smart_factory::GetPackage :datatype-) "auto_smart_factory/GetPackage")
(setf (get auto_smart_factory::GetPackage :request) auto_smart_factory::GetPackageRequest)
(setf (get auto_smart_factory::GetPackage :response) auto_smart_factory::GetPackageResponse)

(defmethod auto_smart_factory::GetPackageRequest
  (:response () (instance auto_smart_factory::GetPackageResponse :init)))

(setf (get auto_smart_factory::GetPackageRequest :md5sum-) "a9957da21dd82923674226f14b0e4338")
(setf (get auto_smart_factory::GetPackageRequest :datatype-) "auto_smart_factory/GetPackageRequest")
(setf (get auto_smart_factory::GetPackageRequest :definition-)
      "uint32 trayId
---
Package pkg



================================================================================
MSG: auto_smart_factory/Package
# the unique id of this package
uint32 id

# the id of the package type/configuration
uint32 type_id

")

(setf (get auto_smart_factory::GetPackageResponse :md5sum-) "a9957da21dd82923674226f14b0e4338")
(setf (get auto_smart_factory::GetPackageResponse :datatype-) "auto_smart_factory/GetPackageResponse")
(setf (get auto_smart_factory::GetPackageResponse :definition-)
      "uint32 trayId
---
Package pkg



================================================================================
MSG: auto_smart_factory/Package
# the unique id of this package
uint32 id

# the id of the package type/configuration
uint32 type_id

")



(provide :auto_smart_factory/GetPackage "a9957da21dd82923674226f14b0e4338")


