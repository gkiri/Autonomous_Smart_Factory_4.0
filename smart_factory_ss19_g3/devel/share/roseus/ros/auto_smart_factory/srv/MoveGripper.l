;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::MoveGripper)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'MoveGripper (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::MOVEGRIPPER")
  (make-package "AUTO_SMART_FACTORY::MOVEGRIPPER"))
(unless (find-package "AUTO_SMART_FACTORY::MOVEGRIPPERREQUEST")
  (make-package "AUTO_SMART_FACTORY::MOVEGRIPPERREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::MOVEGRIPPERRESPONSE")
  (make-package "AUTO_SMART_FACTORY::MOVEGRIPPERRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::MoveGripperRequest
  :super ros::object
  :slots (_gripper_id _x _y _z ))

(defmethod auto_smart_factory::MoveGripperRequest
  (:init
   (&key
    ((:gripper_id __gripper_id) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _gripper_id (string __gripper_id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:gripper_id
   (&optional __gripper_id)
   (if __gripper_id (setq _gripper_id __gripper_id)) _gripper_id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; string _gripper_id
    4 (length _gripper_id)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _gripper_id
       (write-long (length _gripper_id) s) (princ _gripper_id s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _gripper_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gripper_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass auto_smart_factory::MoveGripperResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::MoveGripperResponse
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

(defclass auto_smart_factory::MoveGripper
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::MoveGripper :md5sum-) "9584f4c3f08b52e2a84d696a73ba3124")
(setf (get auto_smart_factory::MoveGripper :datatype-) "auto_smart_factory/MoveGripper")
(setf (get auto_smart_factory::MoveGripper :request) auto_smart_factory::MoveGripperRequest)
(setf (get auto_smart_factory::MoveGripper :response) auto_smart_factory::MoveGripperResponse)

(defmethod auto_smart_factory::MoveGripperRequest
  (:response () (instance auto_smart_factory::MoveGripperResponse :init)))

(setf (get auto_smart_factory::MoveGripperRequest :md5sum-) "9584f4c3f08b52e2a84d696a73ba3124")
(setf (get auto_smart_factory::MoveGripperRequest :datatype-) "auto_smart_factory/MoveGripperRequest")
(setf (get auto_smart_factory::MoveGripperRequest :definition-)
      "string gripper_id
float32 x
float32 y
float32 z
---
bool success

")

(setf (get auto_smart_factory::MoveGripperResponse :md5sum-) "9584f4c3f08b52e2a84d696a73ba3124")
(setf (get auto_smart_factory::MoveGripperResponse :datatype-) "auto_smart_factory/MoveGripperResponse")
(setf (get auto_smart_factory::MoveGripperResponse :definition-)
      "string gripper_id
float32 x
float32 y
float32 z
---
bool success

")



(provide :auto_smart_factory/MoveGripper "9584f4c3f08b52e2a84d696a73ba3124")


