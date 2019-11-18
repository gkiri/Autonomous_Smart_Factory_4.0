;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::AdditionalTime)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'AdditionalTime (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::ADDITIONALTIME")
  (make-package "AUTO_SMART_FACTORY::ADDITIONALTIME"))

(in-package "ROS")
;;//! \htmlinclude AdditionalTime.msg.html


(defclass auto_smart_factory::AdditionalTime
  :super ros::object
  :slots (_time ))

(defmethod auto_smart_factory::AdditionalTime
  (:init
   (&key
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _time (float __time))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32 _time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get auto_smart_factory::AdditionalTime :md5sum-) "595a4e99326479146b97bd6237a70ce2")
(setf (get auto_smart_factory::AdditionalTime :datatype-) "auto_smart_factory/AdditionalTime")
(setf (get auto_smart_factory::AdditionalTime :definition-)
      "# additional time for the current task
float32 time

")



(provide :auto_smart_factory/AdditionalTime "595a4e99326479146b97bd6237a70ce2")


