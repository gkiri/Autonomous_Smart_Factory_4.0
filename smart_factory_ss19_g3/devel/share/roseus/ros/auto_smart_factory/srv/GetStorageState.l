;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::GetStorageState)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'GetStorageState (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::GETSTORAGESTATE")
  (make-package "AUTO_SMART_FACTORY::GETSTORAGESTATE"))
(unless (find-package "AUTO_SMART_FACTORY::GETSTORAGESTATEREQUEST")
  (make-package "AUTO_SMART_FACTORY::GETSTORAGESTATEREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::GETSTORAGESTATERESPONSE")
  (make-package "AUTO_SMART_FACTORY::GETSTORAGESTATERESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::GetStorageStateRequest
  :super ros::object
  :slots ())

(defmethod auto_smart_factory::GetStorageStateRequest
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

(defclass auto_smart_factory::GetStorageStateResponse
  :super ros::object
  :slots (_state ))

(defmethod auto_smart_factory::GetStorageStateResponse
  (:init
   (&key
    ((:state __state) (instance auto_smart_factory::StorageState :init))
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
    ;; auto_smart_factory/StorageState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; auto_smart_factory/StorageState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; auto_smart_factory/StorageState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::GetStorageState
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::GetStorageState :md5sum-) "8daf70e0db11146ef116dfad6f35d7dc")
(setf (get auto_smart_factory::GetStorageState :datatype-) "auto_smart_factory/GetStorageState")
(setf (get auto_smart_factory::GetStorageState :request) auto_smart_factory::GetStorageStateRequest)
(setf (get auto_smart_factory::GetStorageState :response) auto_smart_factory::GetStorageStateResponse)

(defmethod auto_smart_factory::GetStorageStateRequest
  (:response () (instance auto_smart_factory::GetStorageStateResponse :init)))

(setf (get auto_smart_factory::GetStorageStateRequest :md5sum-) "8daf70e0db11146ef116dfad6f35d7dc")
(setf (get auto_smart_factory::GetStorageStateRequest :datatype-) "auto_smart_factory/GetStorageStateRequest")
(setf (get auto_smart_factory::GetStorageStateRequest :definition-)
      "---
StorageState state


================================================================================
MSG: auto_smart_factory/StorageState
# timestamp of the state
time stamp

# States of the instances of the three tray types
TrayState[] tray_states

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

(setf (get auto_smart_factory::GetStorageStateResponse :md5sum-) "8daf70e0db11146ef116dfad6f35d7dc")
(setf (get auto_smart_factory::GetStorageStateResponse :datatype-) "auto_smart_factory/GetStorageStateResponse")
(setf (get auto_smart_factory::GetStorageStateResponse :definition-)
      "---
StorageState state


================================================================================
MSG: auto_smart_factory/StorageState
# timestamp of the state
time stamp

# States of the instances of the three tray types
TrayState[] tray_states

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



(provide :auto_smart_factory/GetStorageState "8daf70e0db11146ef116dfad6f35d7dc")


