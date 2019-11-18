;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::SetPackage)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'SetPackage (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::SETPACKAGE")
  (make-package "AUTO_SMART_FACTORY::SETPACKAGE"))
(unless (find-package "AUTO_SMART_FACTORY::SETPACKAGEREQUEST")
  (make-package "AUTO_SMART_FACTORY::SETPACKAGEREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::SETPACKAGERESPONSE")
  (make-package "AUTO_SMART_FACTORY::SETPACKAGERESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::SetPackageRequest
  :super ros::object
  :slots (_trayId _pkg ))

(defmethod auto_smart_factory::SetPackageRequest
  (:init
   (&key
    ((:trayId __trayId) 0)
    ((:pkg __pkg) (instance auto_smart_factory::Package :init))
    )
   (send-super :init)
   (setq _trayId (round __trayId))
   (setq _pkg __pkg)
   self)
  (:trayId
   (&optional __trayId)
   (if __trayId (setq _trayId __trayId)) _trayId)
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
    ;; uint32 _trayId
    4
    ;; auto_smart_factory/Package _pkg
    (send _pkg :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _trayId
       (write-long _trayId s)
     ;; auto_smart_factory/Package _pkg
       (send _pkg :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _trayId
     (setq _trayId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; auto_smart_factory/Package _pkg
     (send _pkg :deserialize buf ptr-) (incf ptr- (send _pkg :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::SetPackageResponse
  :super ros::object
  :slots ())

(defmethod auto_smart_factory::SetPackageResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass auto_smart_factory::SetPackage
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::SetPackage :md5sum-) "2bf9725e18218d881c4e6def49493469")
(setf (get auto_smart_factory::SetPackage :datatype-) "auto_smart_factory/SetPackage")
(setf (get auto_smart_factory::SetPackage :request) auto_smart_factory::SetPackageRequest)
(setf (get auto_smart_factory::SetPackage :response) auto_smart_factory::SetPackageResponse)

(defmethod auto_smart_factory::SetPackageRequest
  (:response () (instance auto_smart_factory::SetPackageResponse :init)))

(setf (get auto_smart_factory::SetPackageRequest :md5sum-) "2bf9725e18218d881c4e6def49493469")
(setf (get auto_smart_factory::SetPackageRequest :datatype-) "auto_smart_factory/SetPackageRequest")
(setf (get auto_smart_factory::SetPackageRequest :definition-)
      "uint32 trayId
Package pkg

================================================================================
MSG: auto_smart_factory/Package
# the unique id of this package
uint32 id

# the id of the package type/configuration
uint32 type_id

---


")

(setf (get auto_smart_factory::SetPackageResponse :md5sum-) "2bf9725e18218d881c4e6def49493469")
(setf (get auto_smart_factory::SetPackageResponse :datatype-) "auto_smart_factory/SetPackageResponse")
(setf (get auto_smart_factory::SetPackageResponse :definition-)
      "uint32 trayId
Package pkg

================================================================================
MSG: auto_smart_factory/Package
# the unique id of this package
uint32 id

# the id of the package type/configuration
uint32 type_id

---


")



(provide :auto_smart_factory/SetPackage "2bf9725e18218d881c4e6def49493469")


