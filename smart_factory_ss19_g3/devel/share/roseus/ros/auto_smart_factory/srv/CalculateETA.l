;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::CalculateETA)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'CalculateETA (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::CALCULATEETA")
  (make-package "AUTO_SMART_FACTORY::CALCULATEETA"))
(unless (find-package "AUTO_SMART_FACTORY::CALCULATEETAREQUEST")
  (make-package "AUTO_SMART_FACTORY::CALCULATEETAREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::CALCULATEETARESPONSE")
  (make-package "AUTO_SMART_FACTORY::CALCULATEETARESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass auto_smart_factory::CalculateETARequest
  :super ros::object
  :slots (_posStart _posEnd _robotId ))

(defmethod auto_smart_factory::CalculateETARequest
  (:init
   (&key
    ((:posStart __posStart) (instance geometry_msgs::Point :init))
    ((:posEnd __posEnd) (instance geometry_msgs::Point :init))
    ((:robotId __robotId) "")
    )
   (send-super :init)
   (setq _posStart __posStart)
   (setq _posEnd __posEnd)
   (setq _robotId (string __robotId))
   self)
  (:posStart
   (&rest __posStart)
   (if (keywordp (car __posStart))
       (send* _posStart __posStart)
     (progn
       (if __posStart (setq _posStart (car __posStart)))
       _posStart)))
  (:posEnd
   (&rest __posEnd)
   (if (keywordp (car __posEnd))
       (send* _posEnd __posEnd)
     (progn
       (if __posEnd (setq _posEnd (car __posEnd)))
       _posEnd)))
  (:robotId
   (&optional __robotId)
   (if __robotId (setq _robotId __robotId)) _robotId)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _posStart
    (send _posStart :serialization-length)
    ;; geometry_msgs/Point _posEnd
    (send _posEnd :serialization-length)
    ;; string _robotId
    4 (length _robotId)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _posStart
       (send _posStart :serialize s)
     ;; geometry_msgs/Point _posEnd
       (send _posEnd :serialize s)
     ;; string _robotId
       (write-long (length _robotId) s) (princ _robotId s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _posStart
     (send _posStart :deserialize buf ptr-) (incf ptr- (send _posStart :serialization-length))
   ;; geometry_msgs/Point _posEnd
     (send _posEnd :deserialize buf ptr-) (incf ptr- (send _posEnd :serialization-length))
   ;; string _robotId
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robotId (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass auto_smart_factory::CalculateETAResponse
  :super ros::object
  :slots (_resultETA ))

(defmethod auto_smart_factory::CalculateETAResponse
  (:init
   (&key
    ((:resultETA __resultETA) 0.0)
    )
   (send-super :init)
   (setq _resultETA (float __resultETA))
   self)
  (:resultETA
   (&optional __resultETA)
   (if __resultETA (setq _resultETA __resultETA)) _resultETA)
  (:serialization-length
   ()
   (+
    ;; float32 _resultETA
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _resultETA
       (sys::poke _resultETA (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _resultETA
     (setq _resultETA (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass auto_smart_factory::CalculateETA
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::CalculateETA :md5sum-) "192e38bd534846aab00c4eb9ae76cdf0")
(setf (get auto_smart_factory::CalculateETA :datatype-) "auto_smart_factory/CalculateETA")
(setf (get auto_smart_factory::CalculateETA :request) auto_smart_factory::CalculateETARequest)
(setf (get auto_smart_factory::CalculateETA :response) auto_smart_factory::CalculateETAResponse)

(defmethod auto_smart_factory::CalculateETARequest
  (:response () (instance auto_smart_factory::CalculateETAResponse :init)))

(setf (get auto_smart_factory::CalculateETARequest :md5sum-) "192e38bd534846aab00c4eb9ae76cdf0")
(setf (get auto_smart_factory::CalculateETARequest :datatype-) "auto_smart_factory/CalculateETARequest")
(setf (get auto_smart_factory::CalculateETARequest :definition-)
      "geometry_msgs/Point posStart
geometry_msgs/Point posEnd
string robotId


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

float32 resultETA

")

(setf (get auto_smart_factory::CalculateETAResponse :md5sum-) "192e38bd534846aab00c4eb9ae76cdf0")
(setf (get auto_smart_factory::CalculateETAResponse :datatype-) "auto_smart_factory/CalculateETAResponse")
(setf (get auto_smart_factory::CalculateETAResponse :definition-)
      "geometry_msgs/Point posStart
geometry_msgs/Point posEnd
string robotId


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

float32 resultETA

")



(provide :auto_smart_factory/CalculateETA "192e38bd534846aab00c4eb9ae76cdf0")


