;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::GetTrayState)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'GetTrayState (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::GETTRAYSTATE")
  (make-package "AUTO_SMART_FACTORY::GETTRAYSTATE"))
(unless (find-package "AUTO_SMART_FACTORY::GETTRAYSTATEREQUEST")
  (make-package "AUTO_SMART_FACTORY::GETTRAYSTATEREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::GETTRAYSTATERESPONSE")
  (make-package "AUTO_SMART_FACTORY::GETTRAYSTATERESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::GetTrayStateRequest
  :super ros::object
  :slots (_trayId ))

(defmethod auto_smart_factory::GetTrayStateRequest
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

(defclass auto_smart_factory::GetTrayStateResponse
  :super ros::object
  :slots (_state ))

(defmethod auto_smart_factory::GetTrayStateResponse
  (:init
   (&key
    ((:state __state) (instance auto_smart_factory::TrayState :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; auto_smart_factory/TrayState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; auto_smart_factory/TrayState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; auto_smart_factory/TrayState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::GetTrayState
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::GetTrayState :md5sum-) "9b8e34a8997f8c20f3dac59f7997bfaa")
(setf (get auto_smart_factory::GetTrayState :datatype-) "auto_smart_factory/GetTrayState")
(setf (get auto_smart_factory::GetTrayState :request) auto_smart_factory::GetTrayStateRequest)
(setf (get auto_smart_factory::GetTrayState :response) auto_smart_factory::GetTrayStateResponse)

(defmethod auto_smart_factory::GetTrayStateRequest
  (:response () (instance auto_smart_factory::GetTrayStateResponse :init)))

(setf (get auto_smart_factory::GetTrayStateRequest :md5sum-) "9b8e34a8997f8c20f3dac59f7997bfaa")
(setf (get auto_smart_factory::GetTrayStateRequest :datatype-) "auto_smart_factory/GetTrayStateRequest")
(setf (get auto_smart_factory::GetTrayStateRequest :definition-)
      "uint32 trayId
---
TrayState state



================================================================================
MSG: auto_smart_factory/TrayState
# the unique tray ID
uint32 id

# Indicates whether the tray is occupied or not.
bool occupied

# Availability of the tray. If false the the tray is allocated by a task.
bool available

# information about the package stored in this tray (only valid if state != free)
Package package


================================================================================
MSG: auto_smart_factory/Package
# the unique id of this package
uint32 id

# the id of the package type/configuration
uint32 type_id

")

(setf (get auto_smart_factory::GetTrayStateResponse :md5sum-) "9b8e34a8997f8c20f3dac59f7997bfaa")
(setf (get auto_smart_factory::GetTrayStateResponse :datatype-) "auto_smart_factory/GetTrayStateResponse")
(setf (get auto_smart_factory::GetTrayStateResponse :definition-)
      "uint32 trayId
---
TrayState state



================================================================================
MSG: auto_smart_factory/TrayState
# the unique tray ID
uint32 id

# Indicates whether the tray is occupied or not.
bool occupied

# Availability of the tray. If false the the tray is allocated by a task.
bool available

# information about the package stored in this tray (only valid if state != free)
Package package


================================================================================
MSG: auto_smart_factory/Package
# the unique id of this package
uint32 id

# the id of the package type/configuration
uint32 type_id

")



(provide :auto_smart_factory/GetTrayState "9b8e34a8997f8c20f3dac59f7997bfaa")


