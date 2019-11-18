;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::GetPackageConfigurations)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'GetPackageConfigurations (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::GETPACKAGECONFIGURATIONS")
  (make-package "AUTO_SMART_FACTORY::GETPACKAGECONFIGURATIONS"))
(unless (find-package "AUTO_SMART_FACTORY::GETPACKAGECONFIGURATIONSREQUEST")
  (make-package "AUTO_SMART_FACTORY::GETPACKAGECONFIGURATIONSREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::GETPACKAGECONFIGURATIONSRESPONSE")
  (make-package "AUTO_SMART_FACTORY::GETPACKAGECONFIGURATIONSRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::GetPackageConfigurationsRequest
  :super ros::object
  :slots ())

(defmethod auto_smart_factory::GetPackageConfigurationsRequest
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

(defclass auto_smart_factory::GetPackageConfigurationsResponse
  :super ros::object
  :slots (_configs ))

(defmethod auto_smart_factory::GetPackageConfigurationsResponse
  (:init
   (&key
    ((:configs __configs) (let (r) (dotimes (i 0) (push (instance auto_smart_factory::PackageConfiguration :init) r)) r))
    )
   (send-super :init)
   (setq _configs __configs)
   self)
  (:configs
   (&rest __configs)
   (if (keywordp (car __configs))
       (send* _configs __configs)
     (progn
       (if __configs (setq _configs (car __configs)))
       _configs)))
  (:serialization-length
   ()
   (+
    ;; auto_smart_factory/PackageConfiguration[] _configs
    (apply #'+ (send-all _configs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; auto_smart_factory/PackageConfiguration[] _configs
     (write-long (length _configs) s)
     (dolist (elem _configs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; auto_smart_factory/PackageConfiguration[] _configs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _configs (let (r) (dotimes (i n) (push (instance auto_smart_factory::PackageConfiguration :init) r)) r))
     (dolist (elem- _configs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass auto_smart_factory::GetPackageConfigurations
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::GetPackageConfigurations :md5sum-) "6c79e4d48272b30033eb439274215257")
(setf (get auto_smart_factory::GetPackageConfigurations :datatype-) "auto_smart_factory/GetPackageConfigurations")
(setf (get auto_smart_factory::GetPackageConfigurations :request) auto_smart_factory::GetPackageConfigurationsRequest)
(setf (get auto_smart_factory::GetPackageConfigurations :response) auto_smart_factory::GetPackageConfigurationsResponse)

(defmethod auto_smart_factory::GetPackageConfigurationsRequest
  (:response () (instance auto_smart_factory::GetPackageConfigurationsResponse :init)))

(setf (get auto_smart_factory::GetPackageConfigurationsRequest :md5sum-) "6c79e4d48272b30033eb439274215257")
(setf (get auto_smart_factory::GetPackageConfigurationsRequest :datatype-) "auto_smart_factory/GetPackageConfigurationsRequest")
(setf (get auto_smart_factory::GetPackageConfigurationsRequest :definition-)
      "---
PackageConfiguration[] configs


================================================================================
MSG: auto_smart_factory/PackageConfiguration
# package type id (!= package id)
uint32 id

# package dimensions
float32 width
float32 height

# package weight
float32 weight

")

(setf (get auto_smart_factory::GetPackageConfigurationsResponse :md5sum-) "6c79e4d48272b30033eb439274215257")
(setf (get auto_smart_factory::GetPackageConfigurationsResponse :datatype-) "auto_smart_factory/GetPackageConfigurationsResponse")
(setf (get auto_smart_factory::GetPackageConfigurationsResponse :definition-)
      "---
PackageConfiguration[] configs


================================================================================
MSG: auto_smart_factory/PackageConfiguration
# package type id (!= package id)
uint32 id

# package dimensions
float32 width
float32 height

# package weight
float32 weight

")



(provide :auto_smart_factory/GetPackageConfigurations "6c79e4d48272b30033eb439274215257")


