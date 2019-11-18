;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::NewPackageInput)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'NewPackageInput (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::NEWPACKAGEINPUT")
  (make-package "AUTO_SMART_FACTORY::NEWPACKAGEINPUT"))
(unless (find-package "AUTO_SMART_FACTORY::NEWPACKAGEINPUTREQUEST")
  (make-package "AUTO_SMART_FACTORY::NEWPACKAGEINPUTREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::NEWPACKAGEINPUTRESPONSE")
  (make-package "AUTO_SMART_FACTORY::NEWPACKAGEINPUTRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::NewPackageInputRequest
  :super ros::object
  :slots (_input_tray_id _package ))

(defmethod auto_smart_factory::NewPackageInputRequest
  (:init
   (&key
    ((:input_tray_id __input_tray_id) 0)
    ((:package __package) (instance auto_smart_factory::Package :init))
    )
   (send-super :init)
   (setq _input_tray_id (round __input_tray_id))
   (setq _package __package)
   self)
  (:input_tray_id
   (&optional __input_tray_id)
   (if __input_tray_id (setq _input_tray_id __input_tray_id)) _input_tray_id)
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
    ;; uint32 _input_tray_id
    4
    ;; auto_smart_factory/Package _package
    (send _package :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _input_tray_id
       (write-long _input_tray_id s)
     ;; auto_smart_factory/Package _package
       (send _package :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _input_tray_id
     (setq _input_tray_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; auto_smart_factory/Package _package
     (send _package :deserialize buf ptr-) (incf ptr- (send _package :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::NewPackageInputResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::NewPackageInputResponse
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

(defclass auto_smart_factory::NewPackageInput
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::NewPackageInput :md5sum-) "cb8fa262c2f7b69df6eabe55ec8b9e33")
(setf (get auto_smart_factory::NewPackageInput :datatype-) "auto_smart_factory/NewPackageInput")
(setf (get auto_smart_factory::NewPackageInput :request) auto_smart_factory::NewPackageInputRequest)
(setf (get auto_smart_factory::NewPackageInput :response) auto_smart_factory::NewPackageInputResponse)

(defmethod auto_smart_factory::NewPackageInputRequest
  (:response () (instance auto_smart_factory::NewPackageInputResponse :init)))

(setf (get auto_smart_factory::NewPackageInputRequest :md5sum-) "cb8fa262c2f7b69df6eabe55ec8b9e33")
(setf (get auto_smart_factory::NewPackageInputRequest :datatype-) "auto_smart_factory/NewPackageInputRequest")
(setf (get auto_smart_factory::NewPackageInputRequest :definition-)
      "
uint32 input_tray_id


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

(setf (get auto_smart_factory::NewPackageInputResponse :md5sum-) "cb8fa262c2f7b69df6eabe55ec8b9e33")
(setf (get auto_smart_factory::NewPackageInputResponse :datatype-) "auto_smart_factory/NewPackageInputResponse")
(setf (get auto_smart_factory::NewPackageInputResponse :definition-)
      "
uint32 input_tray_id


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



(provide :auto_smart_factory/NewPackageInput "cb8fa262c2f7b69df6eabe55ec8b9e33")


