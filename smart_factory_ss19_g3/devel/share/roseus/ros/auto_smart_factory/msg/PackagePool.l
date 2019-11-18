;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::PackagePool)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'PackagePool (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::PACKAGEPOOL")
  (make-package "AUTO_SMART_FACTORY::PACKAGEPOOL"))

(in-package "ROS")
;;//! \htmlinclude PackagePool.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass auto_smart_factory::PackagePool
  :super ros::object
  :slots (_drop_location _stacking_area ))

(defmethod auto_smart_factory::PackagePool
  (:init
   (&key
    ((:drop_location __drop_location) (instance geometry_msgs::Point32 :init))
    ((:stacking_area __stacking_area) (let (r) (dotimes (i 2) (push (instance geometry_msgs::Point32 :init) r)) r))
    )
   (send-super :init)
   (setq _drop_location __drop_location)
   (setq _stacking_area __stacking_area)
   self)
  (:drop_location
   (&rest __drop_location)
   (if (keywordp (car __drop_location))
       (send* _drop_location __drop_location)
     (progn
       (if __drop_location (setq _drop_location (car __drop_location)))
       _drop_location)))
  (:stacking_area
   (&rest __stacking_area)
   (if (keywordp (car __stacking_area))
       (send* _stacking_area __stacking_area)
     (progn
       (if __stacking_area (setq _stacking_area (car __stacking_area)))
       _stacking_area)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point32 _drop_location
    (send _drop_location :serialization-length)
    ;; geometry_msgs/Point32[2] _stacking_area
    (apply #'+ (send-all _stacking_area :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32 _drop_location
       (send _drop_location :serialize s)
     ;; geometry_msgs/Point32[2] _stacking_area
     (dolist (elem _stacking_area)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32 _drop_location
     (send _drop_location :deserialize buf ptr-) (incf ptr- (send _drop_location :serialization-length))
   ;; geometry_msgs/Point32[2] _stacking_area
   (dotimes (i 2)
     (send (elt _stacking_area i) :deserialize buf ptr-) (incf ptr- (send (elt _stacking_area i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get auto_smart_factory::PackagePool :md5sum-) "bcef3bd1883fdc3a8214f645cc30ecaa")
(setf (get auto_smart_factory::PackagePool :datatype-) "auto_smart_factory/PackagePool")
(setf (get auto_smart_factory::PackagePool :definition-)
      "# Drop location: The 3D point where packages can be dropped to be placed in the container.
geometry_msgs/Point32 drop_location

# Stacking area: Area where packages can be stacked at the beginning
geometry_msgs/Point32[2] stacking_area


================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :auto_smart_factory/PackagePool "bcef3bd1883fdc3a8214f645cc30ecaa")


