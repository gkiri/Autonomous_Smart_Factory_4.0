;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::PackageConfiguration)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'PackageConfiguration (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::PACKAGECONFIGURATION")
  (make-package "AUTO_SMART_FACTORY::PACKAGECONFIGURATION"))

(in-package "ROS")
;;//! \htmlinclude PackageConfiguration.msg.html


(defclass auto_smart_factory::PackageConfiguration
  :super ros::object
  :slots (_id _width _height _weight ))

(defmethod auto_smart_factory::PackageConfiguration
  (:init
   (&key
    ((:id __id) 0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:weight __weight) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _weight (float __weight))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; float32 _width
    4
    ;; float32 _height
    4
    ;; float32 _weight
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _weight
     (setq _weight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get auto_smart_factory::PackageConfiguration :md5sum-) "4cf7721bfc769026ba7e793cd9017b38")
(setf (get auto_smart_factory::PackageConfiguration :datatype-) "auto_smart_factory/PackageConfiguration")
(setf (get auto_smart_factory::PackageConfiguration :definition-)
      "# package type id (!= package id)
uint32 id

# package dimensions
float32 width
float32 height

# package weight
float32 weight


")



(provide :auto_smart_factory/PackageConfiguration "4cf7721bfc769026ba7e793cd9017b38")


