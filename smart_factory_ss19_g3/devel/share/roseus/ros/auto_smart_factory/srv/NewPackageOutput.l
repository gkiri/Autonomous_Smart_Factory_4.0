;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::NewPackageOutput)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'NewPackageOutput (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::NEWPACKAGEOUTPUT")
  (make-package "AUTO_SMART_FACTORY::NEWPACKAGEOUTPUT"))
(unless (find-package "AUTO_SMART_FACTORY::NEWPACKAGEOUTPUTREQUEST")
  (make-package "AUTO_SMART_FACTORY::NEWPACKAGEOUTPUTREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::NEWPACKAGEOUTPUTRESPONSE")
  (make-package "AUTO_SMART_FACTORY::NEWPACKAGEOUTPUTRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::NewPackageOutputRequest
  :super ros::object
  :slots (_output_tray_id _package ))

(defmethod auto_smart_factory::NewPackageOutputRequest
  (:init
   (&key
    ((:output_tray_id __output_tray_id) 0)
    ((:package __package) (instance auto_smart_factory::Package :init))
    )
   (send-super :init)
   (setq _output_tray_id (round __output_tray_id))
   (setq _package __package)
   self)
  (:output_tray_id
   (&optional __output_tray_id)
   (if __output_tray_id (setq _output_tray_id __output_tray_id)) _output_tray_id)
  (:package
   (&rest __package)
   (if (keywordp (car __package))
       (send* _package __package)
     (progn
       (if __package (setq _package (car __package)))
       _package)))
  (:serialization-length
   ()
   (+
    ;; uint32 _output_tray_id
    4
    ;; auto_smart_factory/Package _package
    (send _package :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _output_tray_id
       (write-long _output_tray_id s)
     ;; auto_smart_factory/Package _package
       (send _package :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _output_tray_id
     (setq _output_tray_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; auto_smart_factory/Package _package
     (send _package :deserialize buf ptr-) (incf ptr- (send _package :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::NewPackageOutputResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::NewPackageOutputResponse
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

(defclass auto_smart_factory::NewPackageOutput
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::NewPackageOutput :md5sum-) "098e14107067978df5c59d83e2abbe5a")
(setf (get auto_smart_factory::NewPackageOutput :datatype-) "auto_smart_factory/NewPackageOutput")
(setf (get auto_smart_factory::NewPackageOutput :request) auto_smart_factory::NewPackageOutputRequest)
(setf (get auto_smart_factory::NewPackageOutput :response) auto_smart_factory::NewPackageOutputResponse)

(defmethod auto_smart_factory::NewPackageOutputRequest
  (:response () (instance auto_smart_factory::NewPackageOutputResponse :init)))

(setf (get auto_smart_factory::NewPackageOutputRequest :md5sum-) "098e14107067978df5c59d83e2abbe5a")
(setf (get auto_smart_factory::NewPackageOutputRequest :datatype-) "auto_smart_factory/NewPackageOutputRequest")
(setf (get auto_smart_factory::NewPackageOutputRequest :definition-)
      "
uint32 output_tray_id


Package package

================================================================================
MSG: auto_smart_factory/Package
# the unique id of this package
uint32 id

# the id of the package type/configuration
uint32 type_id

---
bool success


")

(setf (get auto_smart_factory::NewPackageOutputResponse :md5sum-) "098e14107067978df5c59d83e2abbe5a")
(setf (get auto_smart_factory::NewPackageOutputResponse :datatype-) "auto_smart_factory/NewPackageOutputResponse")
(setf (get auto_smart_factory::NewPackageOutputResponse :definition-)
      "
uint32 output_tray_id


Package package

================================================================================
MSG: auto_smart_factory/Package
# the unique id of this package
uint32 id

# the id of the package type/configuration
uint32 type_id

---
bool success


")



(provide :auto_smart_factory/NewPackageOutput "098e14107067978df5c59d83e2abbe5a")


