;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::TrayGeometry)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'TrayGeometry (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::TRAYGEOMETRY")
  (make-package "AUTO_SMART_FACTORY::TRAYGEOMETRY"))

(in-package "ROS")
;;//! \htmlinclude TrayGeometry.msg.html


(defclass auto_smart_factory::TrayGeometry
  :super ros::object
  :slots (_width _height ))

(defmethod auto_smart_factory::TrayGeometry
  (:init
   (&key
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _width (float __width))
   (setq _height (float __height))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float32 _width
    4
    ;; float32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get auto_smart_factory::TrayGeometry :md5sum-) "ed3043f094c99bdd8118bc5b0ddb14ba")
(setf (get auto_smart_factory::TrayGeometry :datatype-) "auto_smart_factory/TrayGeometry")
(setf (get auto_smart_factory::TrayGeometry :definition-)
      "# Info about the tray geometry
float32 width
float32 height


")



(provide :auto_smart_factory/TrayGeometry "ed3043f094c99bdd8118bc5b0ddb14ba")


