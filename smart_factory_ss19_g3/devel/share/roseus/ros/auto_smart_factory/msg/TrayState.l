;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::TrayState)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'TrayState (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::TRAYSTATE")
  (make-package "AUTO_SMART_FACTORY::TRAYSTATE"))

(in-package "ROS")
;;//! \htmlinclude TrayState.msg.html


(defclass auto_smart_factory::TrayState
  :super ros::object
  :slots (_id _occupied _available _package ))

(defmethod auto_smart_factory::TrayState
  (:init
   (&key
    ((:id __id) 0)
    ((:occupied __occupied) nil)
    ((:available __available) nil)
    ((:package __package) (instance auto_smart_factory::Package :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _occupied __occupied)
   (setq _available __available)
   (setq _package __package)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:occupied
   (&optional __occupied)
   (if __occupied (setq _occupied __occupied)) _occupied)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
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
    ;; uint32 _id
    4
    ;; bool _occupied
    1
    ;; bool _available
    1
    ;; auto_smart_factory/Package _package
    (send _package :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; bool _occupied
       (if _occupied (write-byte -1 s) (write-byte 0 s))
     ;; bool _available
       (if _available (write-byte -1 s) (write-byte 0 s))
     ;; auto_smart_factory/Package _package
       (send _package :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _occupied
     (setq _occupied (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _available
     (setq _available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; auto_smart_factory/Package _package
     (send _package :deserialize buf ptr-) (incf ptr- (send _package :serialization-length))
   ;;
   self)
  )

(setf (get auto_smart_factory::TrayState :md5sum-) "643c502f6bd6aed46ad54aaea2358f46")
(setf (get auto_smart_factory::TrayState :datatype-) "auto_smart_factory/TrayState")
(setf (get auto_smart_factory::TrayState :definition-)
      "# the unique tray ID
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



(provide :auto_smart_factory/TrayState "643c502f6bd6aed46ad54aaea2358f46")


