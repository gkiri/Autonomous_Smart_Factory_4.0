;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::RotateTable)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'RotateTable (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::ROTATETABLE")
  (make-package "AUTO_SMART_FACTORY::ROTATETABLE"))
(unless (find-package "AUTO_SMART_FACTORY::ROTATETABLEREQUEST")
  (make-package "AUTO_SMART_FACTORY::ROTATETABLEREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::ROTATETABLERESPONSE")
  (make-package "AUTO_SMART_FACTORY::ROTATETABLERESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::RotateTableRequest
  :super ros::object
  :slots (_degrees ))

(defmethod auto_smart_factory::RotateTableRequest
  (:init
   (&key
    ((:degrees __degrees) 0)
    )
   (send-super :init)
   (setq _degrees (round __degrees))
   self)
  (:degrees
   (&optional __degrees)
   (if __degrees (setq _degrees __degrees)) _degrees)
  (:serialization-length
   ()
   (+
    ;; int32 _degrees
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _degrees
       (write-long _degrees s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _degrees
     (setq _degrees (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass auto_smart_factory::RotateTableResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::RotateTableResponse
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

(defclass auto_smart_factory::RotateTable
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::RotateTable :md5sum-) "f112e8d09c0b0824d371f81aa34bf8fd")
(setf (get auto_smart_factory::RotateTable :datatype-) "auto_smart_factory/RotateTable")
(setf (get auto_smart_factory::RotateTable :request) auto_smart_factory::RotateTableRequest)
(setf (get auto_smart_factory::RotateTable :response) auto_smart_factory::RotateTableResponse)

(defmethod auto_smart_factory::RotateTableRequest
  (:response () (instance auto_smart_factory::RotateTableResponse :init)))

(setf (get auto_smart_factory::RotateTableRequest :md5sum-) "f112e8d09c0b0824d371f81aa34bf8fd")
(setf (get auto_smart_factory::RotateTableRequest :datatype-) "auto_smart_factory/RotateTableRequest")
(setf (get auto_smart_factory::RotateTableRequest :definition-)
      "
int32 degrees
---

bool success

")

(setf (get auto_smart_factory::RotateTableResponse :md5sum-) "f112e8d09c0b0824d371f81aa34bf8fd")
(setf (get auto_smart_factory::RotateTableResponse :datatype-) "auto_smart_factory/RotateTableResponse")
(setf (get auto_smart_factory::RotateTableResponse :definition-)
      "
int32 degrees
---

bool success

")



(provide :auto_smart_factory/RotateTable "f112e8d09c0b0824d371f81aa34bf8fd")


