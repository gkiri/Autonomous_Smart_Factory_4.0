;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::StorageState)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'StorageState (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::STORAGESTATE")
  (make-package "AUTO_SMART_FACTORY::STORAGESTATE"))

(in-package "ROS")
;;//! \htmlinclude StorageState.msg.html


(defclass auto_smart_factory::StorageState
  :super ros::object
  :slots (_stamp _tray_states ))

(defmethod auto_smart_factory::StorageState
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:tray_states __tray_states) (let (r) (dotimes (i 0) (push (instance auto_smart_factory::TrayState :init) r)) r))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _tray_states __tray_states)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:tray_states
   (&rest __tray_states)
   (if (keywordp (car __tray_states))
       (send* _tray_states __tray_states)
     (progn
       (if __tray_states (setq _tray_states (car __tray_states)))
       _tray_states)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; auto_smart_factory/TrayState[] _tray_states
    (apply #'+ (send-all _tray_states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; auto_smart_factory/TrayState[] _tray_states
     (write-long (length _tray_states) s)
     (dolist (elem _tray_states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; auto_smart_factory/TrayState[] _tray_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tray_states (let (r) (dotimes (i n) (push (instance auto_smart_factory::TrayState :init) r)) r))
     (dolist (elem- _tray_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get auto_smart_factory::StorageState :md5sum-) "f58a17d0041d1e3c68f904805f0526cc")
(setf (get auto_smart_factory::StorageState :datatype-) "auto_smart_factory/StorageState")
(setf (get auto_smart_factory::StorageState :definition-)
      "# timestamp of the state
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



(provide :auto_smart_factory/StorageState "f58a17d0041d1e3c68f904805f0526cc")


