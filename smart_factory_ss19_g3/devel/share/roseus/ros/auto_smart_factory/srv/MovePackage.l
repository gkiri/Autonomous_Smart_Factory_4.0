;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::MovePackage)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'MovePackage (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::MOVEPACKAGE")
  (make-package "AUTO_SMART_FACTORY::MOVEPACKAGE"))
(unless (find-package "AUTO_SMART_FACTORY::MOVEPACKAGEREQUEST")
  (make-package "AUTO_SMART_FACTORY::MOVEPACKAGEREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::MOVEPACKAGERESPONSE")
  (make-package "AUTO_SMART_FACTORY::MOVEPACKAGERESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::MovePackageRequest
  :super ros::object
  :slots (_package_id _x _y _z ))

(defmethod auto_smart_factory::MovePackageRequest
  (:init
   (&key
    ((:package_id __package_id) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _package_id (string __package_id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:package_id
   (&optional __package_id)
   (if __package_id (setq _package_id __package_id)) _package_id)
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
    ;; string _package_id
    4 (length _package_id)
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
     ;; string _package_id
       (write-long (length _package_id) s) (princ _package_id s)
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
   ;; string _package_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _package_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass auto_smart_factory::MovePackageResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::MovePackageResponse
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

(defclass auto_smart_factory::MovePackage
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::MovePackage :md5sum-) "a13e62d7ae1d84e470f967fb93b69c6e")
(setf (get auto_smart_factory::MovePackage :datatype-) "auto_smart_factory/MovePackage")
(setf (get auto_smart_factory::MovePackage :request) auto_smart_factory::MovePackageRequest)
(setf (get auto_smart_factory::MovePackage :response) auto_smart_factory::MovePackageResponse)

(defmethod auto_smart_factory::MovePackageRequest
  (:response () (instance auto_smart_factory::MovePackageResponse :init)))

(setf (get auto_smart_factory::MovePackageRequest :md5sum-) "a13e62d7ae1d84e470f967fb93b69c6e")
(setf (get auto_smart_factory::MovePackageRequest :datatype-) "auto_smart_factory/MovePackageRequest")
(setf (get auto_smart_factory::MovePackageRequest :definition-)
      "string package_id
float32 x
float32 y
float32 z
---
bool success

")

(setf (get auto_smart_factory::MovePackageResponse :md5sum-) "a13e62d7ae1d84e470f967fb93b69c6e")
(setf (get auto_smart_factory::MovePackageResponse :datatype-) "auto_smart_factory/MovePackageResponse")
(setf (get auto_smart_factory::MovePackageResponse :definition-)
      "string package_id
float32 x
float32 y
float32 z
---
bool success

")



(provide :auto_smart_factory/MovePackage "a13e62d7ae1d84e470f967fb93b69c6e")


