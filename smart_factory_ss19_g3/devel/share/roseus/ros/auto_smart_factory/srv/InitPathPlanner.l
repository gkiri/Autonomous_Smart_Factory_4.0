;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::InitPathPlanner)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'InitPathPlanner (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::INITPATHPLANNER")
  (make-package "AUTO_SMART_FACTORY::INITPATHPLANNER"))
(unless (find-package "AUTO_SMART_FACTORY::INITPATHPLANNERREQUEST")
  (make-package "AUTO_SMART_FACTORY::INITPATHPLANNERREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::INITPATHPLANNERRESPONSE")
  (make-package "AUTO_SMART_FACTORY::INITPATHPLANNERRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::InitPathPlannerRequest
  :super ros::object
  :slots ())

(defmethod auto_smart_factory::InitPathPlannerRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass auto_smart_factory::InitPathPlannerResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::InitPathPlannerResponse
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

(defclass auto_smart_factory::InitPathPlanner
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::InitPathPlanner :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get auto_smart_factory::InitPathPlanner :datatype-) "auto_smart_factory/InitPathPlanner")
(setf (get auto_smart_factory::InitPathPlanner :request) auto_smart_factory::InitPathPlannerRequest)
(setf (get auto_smart_factory::InitPathPlanner :response) auto_smart_factory::InitPathPlannerResponse)

(defmethod auto_smart_factory::InitPathPlannerRequest
  (:response () (instance auto_smart_factory::InitPathPlannerResponse :init)))

(setf (get auto_smart_factory::InitPathPlannerRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get auto_smart_factory::InitPathPlannerRequest :datatype-) "auto_smart_factory/InitPathPlannerRequest")
(setf (get auto_smart_factory::InitPathPlannerRequest :definition-)
      "---
bool success

")

(setf (get auto_smart_factory::InitPathPlannerResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get auto_smart_factory::InitPathPlannerResponse :datatype-) "auto_smart_factory/InitPathPlannerResponse")
(setf (get auto_smart_factory::InitPathPlannerResponse :definition-)
      "---
bool success

")



(provide :auto_smart_factory/InitPathPlanner "358e233cde0c8a8bcfea4ce193f8fc15")


