;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::CollisionAction)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'CollisionAction (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::COLLISIONACTION")
  (make-package "AUTO_SMART_FACTORY::COLLISIONACTION"))

(in-package "ROS")
;;//! \htmlinclude CollisionAction.msg.html


(defclass auto_smart_factory::CollisionAction
  :super ros::object
  :slots (_RobotId _halt _time_to_halt ))

(defmethod auto_smart_factory::CollisionAction
  (:init
   (&key
    ((:RobotId __RobotId) "")
    ((:halt __halt) nil)
    ((:time_to_halt __time_to_halt) 0.0)
    )
   (send-super :init)
   (setq _RobotId (string __RobotId))
   (setq _halt __halt)
   (setq _time_to_halt (float __time_to_halt))
   self)
  (:RobotId
   (&optional __RobotId)
   (if __RobotId (setq _RobotId __RobotId)) _RobotId)
  (:halt
   (&optional __halt)
   (if __halt (setq _halt __halt)) _halt)
  (:time_to_halt
   (&optional __time_to_halt)
   (if __time_to_halt (setq _time_to_halt __time_to_halt)) _time_to_halt)
  (:serialization-length
   ()
   (+
    ;; string _RobotId
    4 (length _RobotId)
    ;; bool _halt
    1
    ;; float32 _time_to_halt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _RobotId
       (write-long (length _RobotId) s) (princ _RobotId s)
     ;; bool _halt
       (if _halt (write-byte -1 s) (write-byte 0 s))
     ;; float32 _time_to_halt
       (sys::poke _time_to_halt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _RobotId
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _RobotId (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _halt
     (setq _halt (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _time_to_halt
     (setq _time_to_halt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get auto_smart_factory::CollisionAction :md5sum-) "7d85d6f3795d2f6173839c2dc98263c5")
(setf (get auto_smart_factory::CollisionAction :datatype-) "auto_smart_factory/CollisionAction")
(setf (get auto_smart_factory::CollisionAction :definition-)
      "# publishes robot ID
# publishes if robot needs to halt completely or only stops moving until a strategy found
# specifies duration of halt

string RobotId
bool halt
float32 time_to_halt
")



(provide :auto_smart_factory/CollisionAction "7d85d6f3795d2f6173839c2dc98263c5")


