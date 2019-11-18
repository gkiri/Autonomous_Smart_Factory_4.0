;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::Wall)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'Wall (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::WALL")
  (make-package "AUTO_SMART_FACTORY::WALL"))

(in-package "ROS")
;;//! \htmlinclude Wall.msg.html


(defclass auto_smart_factory::Wall
  :super ros::object
  :slots (_x _y _orientation ))

(defmethod auto_smart_factory::Wall
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:orientation __orientation) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _orientation (float __orientation))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _orientation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation
       (sys::poke _orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation
     (setq _orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get auto_smart_factory::Wall :md5sum-) "1c567beaed44a5d11b818be4c87fec7b")
(setf (get auto_smart_factory::Wall :datatype-) "auto_smart_factory/Wall")
(setf (get auto_smart_factory::Wall :definition-)
      "# The representation of a warehouse wall

# the coordinates of the center of the wall in the '/map' frame
float32 x
float32 y

# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.
float32 orientation



")



(provide :auto_smart_factory/Wall "1c567beaed44a5d11b818be4c87fec7b")


