;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::StorageUpdate)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'StorageUpdate (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::STORAGEUPDATE")
  (make-package "AUTO_SMART_FACTORY::STORAGEUPDATE"))

(in-package "ROS")
;;//! \htmlinclude StorageUpdate.msg.html


(intern "*UNKNOWN*" (find-package "AUTO_SMART_FACTORY::STORAGEUPDATE"))
(shadow '*UNKNOWN* (find-package "AUTO_SMART_FACTORY::STORAGEUPDATE"))
(defconstant auto_smart_factory::StorageUpdate::*UNKNOWN* 0)
(intern "*RESERVATION*" (find-package "AUTO_SMART_FACTORY::STORAGEUPDATE"))
(shadow '*RESERVATION* (find-package "AUTO_SMART_FACTORY::STORAGEUPDATE"))
(defconstant auto_smart_factory::StorageUpdate::*RESERVATION* 1)
(intern "*DERESERVATION*" (find-package "AUTO_SMART_FACTORY::STORAGEUPDATE"))
(shadow '*DERESERVATION* (find-package "AUTO_SMART_FACTORY::STORAGEUPDATE"))
(defconstant auto_smart_factory::StorageUpdate::*DERESERVATION* 2)
(intern "*OCCUPATION*" (find-package "AUTO_SMART_FACTORY::STORAGEUPDATE"))
(shadow '*OCCUPATION* (find-package "AUTO_SMART_FACTORY::STORAGEUPDATE"))
(defconstant auto_smart_factory::StorageUpdate::*OCCUPATION* 3)
(intern "*DEOCCUPATION*" (find-package "AUTO_SMART_FACTORY::STORAGEUPDATE"))
(shadow '*DEOCCUPATION* (find-package "AUTO_SMART_FACTORY::STORAGEUPDATE"))
(defconstant auto_smart_factory::StorageUpdate::*DEOCCUPATION* 4)
(defclass auto_smart_factory::StorageUpdate
  :super ros::object
  :slots (_stamp _state _action ))

(defmethod auto_smart_factory::StorageUpdate
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:state __state) (instance auto_smart_factory::TrayState :init))
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _state __state)
   (setq _action (round __action))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; auto_smart_factory/TrayState _state
    (send _state :serialization-length)
    ;; uint8 _action
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; auto_smart_factory/TrayState _state
       (send _state :serialize s)
     ;; uint8 _action
       (write-byte _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; auto_smart_factory/TrayState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get auto_smart_factory::StorageUpdate :md5sum-) "83cea01295e4c0b59e3822307599398d")
(setf (get auto_smart_factory::StorageUpdate :datatype-) "auto_smart_factory/StorageUpdate")
(setf (get auto_smart_factory::StorageUpdate :definition-)
      "# timestamp of the update
time stamp

# updated state
TrayState state

# The action that let to this update
uint8 UNKNOWN=0
uint8 RESERVATION=1
uint8 DERESERVATION=2
uint8 OCCUPATION=3
uint8 DEOCCUPATION=4

uint8 action


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



(provide :auto_smart_factory/StorageUpdate "83cea01295e4c0b59e3822307599398d")


