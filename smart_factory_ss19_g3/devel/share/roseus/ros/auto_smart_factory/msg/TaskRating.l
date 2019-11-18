;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::TaskRating)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'TaskRating (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::TASKRATING")
  (make-package "AUTO_SMART_FACTORY::TASKRATING"))

(in-package "ROS")
;;//! \htmlinclude TaskRating.msg.html


(defclass auto_smart_factory::TaskRating
  :super ros::object
  :slots (_request_id _robot_id _start_id _end_id _reject _score _estimatedDuration ))

(defmethod auto_smart_factory::TaskRating
  (:init
   (&key
    ((:request_id __request_id) 0)
    ((:robot_id __robot_id) "")
    ((:start_id __start_id) 0)
    ((:end_id __end_id) 0)
    ((:reject __reject) nil)
    ((:score __score) 0.0)
    ((:estimatedDuration __estimatedDuration) 0.0)
    )
   (send-super :init)
   (setq _request_id (round __request_id))
   (setq _robot_id (string __robot_id))
   (setq _start_id (round __start_id))
   (setq _end_id (round __end_id))
   (setq _reject __reject)
   (setq _score (float __score))
   (setq _estimatedDuration (float __estimatedDuration))
   self)
  (:request_id
   (&optional __request_id)
   (if __request_id (setq _request_id __request_id)) _request_id)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:start_id
   (&optional __start_id)
   (if __start_id (setq _start_id __start_id)) _start_id)
  (:end_id
   (&optional __end_id)
   (if __end_id (setq _end_id __end_id)) _end_id)
  (:reject
   (&optional __reject)
   (if __reject (setq _reject __reject)) _reject)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:estimatedDuration
   (&optional __estimatedDuration)
   (if __estimatedDuration (setq _estimatedDuration __estimatedDuration)) _estimatedDuration)
  (:serialization-length
   ()
   (+
    ;; uint32 _request_id
    4
    ;; string _robot_id
    4 (length _robot_id)
    ;; uint32 _start_id
    4
    ;; uint32 _end_id
    4
    ;; bool _reject
    1
    ;; float64 _score
    8
    ;; float64 _estimatedDuration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _request_id
       (write-long _request_id s)
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; uint32 _start_id
       (write-long _start_id s)
     ;; uint32 _end_id
       (write-long _end_id s)
     ;; bool _reject
       (if _reject (write-byte -1 s) (write-byte 0 s))
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _estimatedDuration
       (sys::poke _estimatedDuration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _request_id
     (setq _request_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _start_id
     (setq _start_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _end_id
     (setq _end_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _reject
     (setq _reject (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _estimatedDuration
     (setq _estimatedDuration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get auto_smart_factory::TaskRating :md5sum-) "149ffda46e6e0172c546d8c62178a040")
(setf (get auto_smart_factory::TaskRating :datatype-) "auto_smart_factory/TaskRating")
(setf (get auto_smart_factory::TaskRating :definition-)
      "# response of a robot, if it wants to take a certain task and if so what its score is

uint32 request_id
string robot_id
uint32 start_id
uint32 end_id
bool reject
float64 score
float64 estimatedDuration

")



(provide :auto_smart_factory/TaskRating "149ffda46e6e0172c546d8c62178a040")


