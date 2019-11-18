;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::Tray)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'Tray (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::TRAY")
  (make-package "AUTO_SMART_FACTORY::TRAY"))

(in-package "ROS")
;;//! \htmlinclude Tray.msg.html


(defclass auto_smart_factory::Tray
  :super ros::object
  :slots (_id _type _x _y _orientation _max_load _package_type ))

(defmethod auto_smart_factory::Tray
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:orientation __orientation) 0.0)
    ((:max_load __max_load) 0.0)
    ((:package_type __package_type) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (string __type))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _orientation (float __orientation))
   (setq _max_load (float __max_load))
   (setq _package_type (round __package_type))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:max_load
   (&optional __max_load)
   (if __max_load (setq _max_load __max_load)) _max_load)
  (:package_type
   (&optional __package_type)
   (if __package_type (setq _package_type __package_type)) _package_type)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; string _type
    4 (length _type)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _orientation
    4
    ;; float32 _max_load
    4
    ;; uint32 _package_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation
       (sys::poke _orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_load
       (sys::poke _max_load (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _package_type
       (write-long _package_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation
     (setq _orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_load
     (setq _max_load (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _package_type
     (setq _package_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get auto_smart_factory::Tray :md5sum-) "4ebddf5eeb28c15170ac6457775fa846")
(setf (get auto_smart_factory::Tray :datatype-) "auto_smart_factory/Tray")
(setf (get auto_smart_factory::Tray :definition-)
      "# The representation of a warehouse tray

# the unique identifier of this tray
uint32 id

# the type of the tray. Valid values: 'input', 'output' and 'storage'
string type

# the coordinates of the center of the tray in the '/map' frame
float32 x
float32 y

# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.
float32 orientation

# maximum load, i.e. the maximum weight of packages to be put into this tray
float32 max_load

# package type this tray can carry. 0 means no constraints.
uint32 package_type

")



(provide :auto_smart_factory/Tray "4ebddf5eeb28c15170ac6457775fa846")


