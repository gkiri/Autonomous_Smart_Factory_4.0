;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::Package)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'Package (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::PACKAGE")
  (make-package "AUTO_SMART_FACTORY::PACKAGE"))

(in-package "ROS")
;;//! \htmlinclude Package.msg.html


(defclass auto_smart_factory::Package
  :super ros::object
  :slots (_id _type_id ))

(defmethod auto_smart_factory::Package
  (:init
   (&key
    ((:id __id) 0)
    ((:type_id __type_id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type_id (round __type_id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type_id
   (&optional __type_id)
   (if __type_id (setq _type_id __type_id)) _type_id)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; uint32 _type_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; uint32 _type_id
       (write-long _type_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _type_id
     (setq _type_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get auto_smart_factory::Package :md5sum-) "deb8587ce4dfba7871cb511e3cf31f9d")
(setf (get auto_smart_factory::Package :datatype-) "auto_smart_factory/Package")
(setf (get auto_smart_factory::Package :definition-)
      "# the unique id of this package
uint32 id

# the id of the package type/configuration
uint32 type_id


")



(provide :auto_smart_factory/Package "deb8587ce4dfba7871cb511e3cf31f9d")


