;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::TaskAnnouncement)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'TaskAnnouncement (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::TASKANNOUNCEMENT")
  (make-package "AUTO_SMART_FACTORY::TASKANNOUNCEMENT"))

(in-package "ROS")
;;//! \htmlinclude TaskAnnouncement.msg.html


(defclass auto_smart_factory::TaskAnnouncement
  :super ros::object
  :slots (_request_id _start_ids _end_ids _timeout ))

(defmethod auto_smart_factory::TaskAnnouncement
  (:init
   (&key
    ((:request_id __request_id) 0)
    ((:start_ids __start_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:end_ids __end_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:timeout __timeout) (instance ros::time :init))
    )
   (send-super :init)
   (setq _request_id (round __request_id))
   (setq _start_ids __start_ids)
   (setq _end_ids __end_ids)
   (setq _timeout __timeout)
   self)
  (:request_id
   (&optional __request_id)
   (if __request_id (setq _request_id __request_id)) _request_id)
  (:start_ids
   (&optional __start_ids)
   (if __start_ids (setq _start_ids __start_ids)) _start_ids)
  (:end_ids
   (&optional __end_ids)
   (if __end_ids (setq _end_ids __end_ids)) _end_ids)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; uint32 _request_id
    4
    ;; uint32[] _start_ids
    (* 4    (length _start_ids)) 4
    ;; uint32[] _end_ids
    (* 4    (length _end_ids)) 4
    ;; time _timeout
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _request_id
       (write-long _request_id s)
     ;; uint32[] _start_ids
     (write-long (length _start_ids) s)
     (dotimes (i (length _start_ids))
       (write-long (elt _start_ids i) s)
       )
     ;; uint32[] _end_ids
     (write-long (length _end_ids) s)
     (dotimes (i (length _end_ids))
       (write-long (elt _end_ids i) s)
       )
     ;; time _timeout
       (write-long (send _timeout :sec) s) (write-long (send _timeout :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _request_id
     (setq _request_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _start_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _start_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _start_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _end_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _end_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _end_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; time _timeout
     (send _timeout :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timeout :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get auto_smart_factory::TaskAnnouncement :md5sum-) "e8ab73e2a72622150a41cf7e28715948")
(setf (get auto_smart_factory::TaskAnnouncement :datatype-) "auto_smart_factory/TaskAnnouncement")
(setf (get auto_smart_factory::TaskAnnouncement :definition-)
      "# Announces a task to the robots.

uint32 request_id
uint32[] start_ids
uint32[] end_ids
time timeout

")



(provide :auto_smart_factory/TaskAnnouncement "e8ab73e2a72622150a41cf7e28715948")


