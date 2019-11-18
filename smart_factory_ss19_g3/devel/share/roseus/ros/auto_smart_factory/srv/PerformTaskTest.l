;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::PerformTaskTest)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'PerformTaskTest (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::PERFORMTASKTEST")
  (make-package "AUTO_SMART_FACTORY::PERFORMTASKTEST"))
(unless (find-package "AUTO_SMART_FACTORY::PERFORMTASKTESTREQUEST")
  (make-package "AUTO_SMART_FACTORY::PERFORMTASKTESTREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::PERFORMTASKTESTRESPONSE")
  (make-package "AUTO_SMART_FACTORY::PERFORMTASKTESTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass auto_smart_factory::PerformTaskTestRequest
  :super ros::object
  :slots (_task_id _start_pos _end_pos ))

(defmethod auto_smart_factory::PerformTaskTestRequest
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:start_pos __start_pos) (instance geometry_msgs::Point :init))
    ((:end_pos __end_pos) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _start_pos __start_pos)
   (setq _end_pos __end_pos)
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:start_pos
   (&rest __start_pos)
   (if (keywordp (car __start_pos))
       (send* _start_pos __start_pos)
     (progn
       (if __start_pos (setq _start_pos (car __start_pos)))
       _start_pos)))
  (:end_pos
   (&rest __end_pos)
   (if (keywordp (car __end_pos))
       (send* _end_pos __end_pos)
     (progn
       (if __end_pos (setq _end_pos (car __end_pos)))
       _end_pos)))
  (:serialization-length
   ()
   (+
    ;; int32 _task_id
    4
    ;; geometry_msgs/Point _start_pos
    (send _start_pos :serialization-length)
    ;; geometry_msgs/Point _end_pos
    (send _end_pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _task_id
       (write-long _task_id s)
     ;; geometry_msgs/Point _start_pos
       (send _start_pos :serialize s)
     ;; geometry_msgs/Point _end_pos
       (send _end_pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _start_pos
     (send _start_pos :deserialize buf ptr-) (incf ptr- (send _start_pos :serialization-length))
   ;; geometry_msgs/Point _end_pos
     (send _end_pos :deserialize buf ptr-) (incf ptr- (send _end_pos :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::PerformTaskTestResponse
  :super ros::object
  :slots (_success ))

(defmethod auto_smart_factory::PerformTaskTestResponse
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

(defclass auto_smart_factory::PerformTaskTest
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::PerformTaskTest :md5sum-) "190d24b4aa92517c4ea4ac2d1df79c43")
(setf (get auto_smart_factory::PerformTaskTest :datatype-) "auto_smart_factory/PerformTaskTest")
(setf (get auto_smart_factory::PerformTaskTest :request) auto_smart_factory::PerformTaskTestRequest)
(setf (get auto_smart_factory::PerformTaskTest :response) auto_smart_factory::PerformTaskTestResponse)

(defmethod auto_smart_factory::PerformTaskTestRequest
  (:response () (instance auto_smart_factory::PerformTaskTestResponse :init)))

(setf (get auto_smart_factory::PerformTaskTestRequest :md5sum-) "190d24b4aa92517c4ea4ac2d1df79c43")
(setf (get auto_smart_factory::PerformTaskTestRequest :datatype-) "auto_smart_factory/PerformTaskTestRequest")
(setf (get auto_smart_factory::PerformTaskTestRequest :definition-)
      "int32 task_id
geometry_msgs/Point start_pos
geometry_msgs/Point end_pos


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

bool success

")

(setf (get auto_smart_factory::PerformTaskTestResponse :md5sum-) "190d24b4aa92517c4ea4ac2d1df79c43")
(setf (get auto_smart_factory::PerformTaskTestResponse :datatype-) "auto_smart_factory/PerformTaskTestResponse")
(setf (get auto_smart_factory::PerformTaskTestResponse :definition-)
      "int32 task_id
geometry_msgs/Point start_pos
geometry_msgs/Point end_pos


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

bool success

")



(provide :auto_smart_factory/PerformTaskTest "190d24b4aa92517c4ea4ac2d1df79c43")


