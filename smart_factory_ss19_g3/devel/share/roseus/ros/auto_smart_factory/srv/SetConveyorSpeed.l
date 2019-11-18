;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::SetConveyorSpeed)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'SetConveyorSpeed (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::SETCONVEYORSPEED")
  (make-package "AUTO_SMART_FACTORY::SETCONVEYORSPEED"))
(unless (find-package "AUTO_SMART_FACTORY::SETCONVEYORSPEEDREQUEST")
  (make-package "AUTO_SMART_FACTORY::SETCONVEYORSPEEDREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::SETCONVEYORSPEEDRESPONSE")
  (make-package "AUTO_SMART_FACTORY::SETCONVEYORSPEEDRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::SetConveyorSpeedRequest
  :super ros::object
  :slots (_speed ))

(defmethod auto_smart_factory::SetConveyorSpeedRequest
  (:init
   (&key
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass auto_smart_factory::SetConveyorSpeedResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::SetConveyorSpeedResponse
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

(defclass auto_smart_factory::SetConveyorSpeed
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::SetConveyorSpeed :md5sum-) "442a651c7244a8d9b9377aa6512c7fb2")
(setf (get auto_smart_factory::SetConveyorSpeed :datatype-) "auto_smart_factory/SetConveyorSpeed")
(setf (get auto_smart_factory::SetConveyorSpeed :request) auto_smart_factory::SetConveyorSpeedRequest)
(setf (get auto_smart_factory::SetConveyorSpeed :response) auto_smart_factory::SetConveyorSpeedResponse)

(defmethod auto_smart_factory::SetConveyorSpeedRequest
  (:response () (instance auto_smart_factory::SetConveyorSpeedResponse :init)))

(setf (get auto_smart_factory::SetConveyorSpeedRequest :md5sum-) "442a651c7244a8d9b9377aa6512c7fb2")
(setf (get auto_smart_factory::SetConveyorSpeedRequest :datatype-) "auto_smart_factory/SetConveyorSpeedRequest")
(setf (get auto_smart_factory::SetConveyorSpeedRequest :definition-)
      "
float32 speed
---

bool success

")

(setf (get auto_smart_factory::SetConveyorSpeedResponse :md5sum-) "442a651c7244a8d9b9377aa6512c7fb2")
(setf (get auto_smart_factory::SetConveyorSpeedResponse :datatype-) "auto_smart_factory/SetConveyorSpeedResponse")
(setf (get auto_smart_factory::SetConveyorSpeedResponse :definition-)
      "
float32 speed
---

bool success

")



(provide :auto_smart_factory/SetConveyorSpeed "442a651c7244a8d9b9377aa6512c7fb2")


