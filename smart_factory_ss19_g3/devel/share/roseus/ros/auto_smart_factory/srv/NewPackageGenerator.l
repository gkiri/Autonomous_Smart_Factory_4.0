;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::NewPackageGenerator)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'NewPackageGenerator (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::NEWPACKAGEGENERATOR")
  (make-package "AUTO_SMART_FACTORY::NEWPACKAGEGENERATOR"))
(unless (find-package "AUTO_SMART_FACTORY::NEWPACKAGEGENERATORREQUEST")
  (make-package "AUTO_SMART_FACTORY::NEWPACKAGEGENERATORREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::NEWPACKAGEGENERATORRESPONSE")
  (make-package "AUTO_SMART_FACTORY::NEWPACKAGEGENERATORRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::NewPackageGeneratorRequest
  :super ros::object
  :slots (_tray _package ))

(defmethod auto_smart_factory::NewPackageGeneratorRequest
  (:init
   (&key
    ((:tray __tray) (instance auto_smart_factory::Tray :init))
    ((:package __package) (instance auto_smart_factory::Package :init))
    )
   (send-super :init)
   (setq _tray __tray)
   (setq _package __package)
   self)
  (:tray
   (&rest __tray)
   (if (keywordp (car __tray))
       (send* _tray __tray)
     (progn
       (if __tray (setq _tray (car __tray)))
       _tray)))
  (:package
   (&rest __package)
   (if (keywordp (car __package))
       (send* _package __package)
     (progn
       (if __package (setq _package (car __package)))
       _package)))
  (:serialization-length
   ()
   (+
    ;; auto_smart_factory/Tray _tray
    (send _tray :serialization-length)
    ;; auto_smart_factory/Package _package
    (send _package :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; auto_smart_factory/Tray _tray
       (send _tray :serialize s)
     ;; auto_smart_factory/Package _package
       (send _package :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; auto_smart_factory/Tray _tray
     (send _tray :deserialize buf ptr-) (incf ptr- (send _tray :serialization-length))
   ;; auto_smart_factory/Package _package
     (send _package :deserialize buf ptr-) (incf ptr- (send _package :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::NewPackageGeneratorResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::NewPackageGeneratorResponse
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

(defclass auto_smart_factory::NewPackageGenerator
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::NewPackageGenerator :md5sum-) "e07a595ba2d638991b2afc427b4d8daa")
(setf (get auto_smart_factory::NewPackageGenerator :datatype-) "auto_smart_factory/NewPackageGenerator")
(setf (get auto_smart_factory::NewPackageGenerator :request) auto_smart_factory::NewPackageGeneratorRequest)
(setf (get auto_smart_factory::NewPackageGenerator :response) auto_smart_factory::NewPackageGeneratorResponse)

(defmethod auto_smart_factory::NewPackageGeneratorRequest
  (:response () (instance auto_smart_factory::NewPackageGeneratorResponse :init)))

(setf (get auto_smart_factory::NewPackageGeneratorRequest :md5sum-) "e07a595ba2d638991b2afc427b4d8daa")
(setf (get auto_smart_factory::NewPackageGeneratorRequest :datatype-) "auto_smart_factory/NewPackageGeneratorRequest")
(setf (get auto_smart_factory::NewPackageGeneratorRequest :definition-)
      "
Tray tray


Package package

================================================================================
MSG: auto_smart_factory/Tray
# The representation of a warehouse tray

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

================================================================================
MSG: auto_smart_factory/Package
# the unique id of this package
uint32 id

# the id of the package type/configuration
uint32 type_id

---
bool success


")

(setf (get auto_smart_factory::NewPackageGeneratorResponse :md5sum-) "e07a595ba2d638991b2afc427b4d8daa")
(setf (get auto_smart_factory::NewPackageGeneratorResponse :datatype-) "auto_smart_factory/NewPackageGeneratorResponse")
(setf (get auto_smart_factory::NewPackageGeneratorResponse :definition-)
      "
Tray tray


Package package

================================================================================
MSG: auto_smart_factory/Tray
# The representation of a warehouse tray

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

================================================================================
MSG: auto_smart_factory/Package
# the unique id of this package
uint32 id

# the id of the package type/configuration
uint32 type_id

---
bool success


")



(provide :auto_smart_factory/NewPackageGenerator "e07a595ba2d638991b2afc427b4d8daa")


