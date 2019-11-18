;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::Robot)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'Robot (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::ROBOT")
  (make-package "AUTO_SMART_FACTORY::ROBOT"))

(in-package "ROS")
;;//! \htmlinclude Robot.msg.html


(defclass auto_smart_factory::Robot
  :super ros::object
  :slots (_id _type ))

(defmethod auto_smart_factory::Robot
  (:init
   (&key
    ((:id __id) "")
    ((:type __type) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _type (string __type))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get auto_smart_factory::Robot :md5sum-) "3ba1be4318fd20a9a1eb2187efdddb8d")
(setf (get auto_smart_factory::Robot :datatype-) "auto_smart_factory/Robot")
(setf (get auto_smart_factory::Robot :definition-)
      "# id of this robot
string id

# type name of this robot
string type


")



(provide :auto_smart_factory/Robot "3ba1be4318fd20a9a1eb2187efdddb8d")


