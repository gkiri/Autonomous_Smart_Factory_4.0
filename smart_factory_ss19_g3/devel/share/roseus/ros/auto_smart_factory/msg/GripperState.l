;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::GripperState)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'GripperState (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::GRIPPERSTATE")
  (make-package "AUTO_SMART_FACTORY::GRIPPERSTATE"))

(in-package "ROS")
;;//! \htmlinclude GripperState.msg.html


(defclass auto_smart_factory::GripperState
  :super ros::object
  :slots (_loaded _package ))

(defmethod auto_smart_factory::GripperState
  (:init
   (&key
    ((:loaded __loaded) nil)
    ((:package __package) (instance auto_smart_factory::Package :init))
    )
   (send-super :init)
   (setq _loaded __loaded)
   (setq _package __package)
   self)
  (:loaded
   (&optional __loaded)
   (if __loaded (setq _loaded __loaded)) _loaded)
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
    ;; bool _loaded
    1
    ;; auto_smart_factory/Package _package
    (send _package :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _loaded
       (if _loaded (write-byte -1 s) (write-byte 0 s))
     ;; auto_smart_factory/Package _package
       (send _package :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _loaded
     (setq _loaded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; auto_smart_factory/Package _package
     (send _package :deserialize buf ptr-) (incf ptr- (send _package :serialization-length))
   ;;
   self)
  )

(setf (get auto_smart_factory::GripperState :md5sum-) "b937d7d47f113e6408c1ccaabb941455")
(setf (get auto_smart_factory::GripperState :datatype-) "auto_smart_factory/GripperState")
(setf (get auto_smart_factory::GripperState :definition-)
      "# robot loaded or unloaded succesfully
bool loaded

# package
Package package

================================================================================
MSG: auto_smart_factory/Package
# the unique id of this package
uint32 id

# the id of the package type/configuration
uint32 type_id


")



(provide :auto_smart_factory/GripperState "b937d7d47f113e6408c1ccaabb941455")


