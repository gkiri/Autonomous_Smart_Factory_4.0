;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::RobotJourney)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'RobotJourney (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::ROBOTJOURNEY")
  (make-package "AUTO_SMART_FACTORY::ROBOTJOURNEY"))

(in-package "ROS")
;;//! \htmlinclude RobotJourney.msg.html


(defclass auto_smart_factory::RobotJourney
  :super ros::object
  :slots (_id _battery_consumption _time_for_completion _distance ))

(defmethod auto_smart_factory::RobotJourney
  (:init
   (&key
    ((:id __id) "")
    ((:battery_consumption __battery_consumption) 0.0)
    ((:time_for_completion __time_for_completion) 0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _battery_consumption (float __battery_consumption))
   (setq _time_for_completion (round __time_for_completion))
   (setq _distance (float __distance))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:battery_consumption
   (&optional __battery_consumption)
   (if __battery_consumption (setq _battery_consumption __battery_consumption)) _battery_consumption)
  (:time_for_completion
   (&optional __time_for_completion)
   (if __time_for_completion (setq _time_for_completion __time_for_completion)) _time_for_completion)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; float32 _battery_consumption
    4
    ;; int32 _time_for_completion
    4
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float32 _battery_consumption
       (sys::poke _battery_consumption (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _time_for_completion
       (write-long _time_for_completion s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _battery_consumption
     (setq _battery_consumption (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _time_for_completion
     (setq _time_for_completion (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get auto_smart_factory::RobotJourney :md5sum-) "88c56eff22bff62afcdddb15045697bc")
(setf (get auto_smart_factory::RobotJourney :datatype-) "auto_smart_factory/RobotJourney")
(setf (get auto_smart_factory::RobotJourney :definition-)
      "# robot id
string id

# battery consumption
float32 battery_consumption

# time it took to complete the task
int32 time_for_completion

# distance travelled
float32 distance

")



(provide :auto_smart_factory/RobotJourney "88c56eff22bff62afcdddb15045697bc")


