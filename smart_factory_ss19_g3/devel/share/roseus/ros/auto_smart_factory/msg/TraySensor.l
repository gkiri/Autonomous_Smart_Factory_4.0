;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::TraySensor)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'TraySensor (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::TRAYSENSOR")
  (make-package "AUTO_SMART_FACTORY::TRAYSENSOR"))

(in-package "ROS")
;;//! \htmlinclude TraySensor.msg.html


(defclass auto_smart_factory::TraySensor
  :super ros::object
  :slots (_stamp _tray_id _occupied _package ))

(defmethod auto_smart_factory::TraySensor
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:tray_id __tray_id) 0)
    ((:occupied __occupied) nil)
    ((:package __package) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _tray_id (round __tray_id))
   (setq _occupied __occupied)
   (setq _package (string __package))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:tray_id
   (&optional __tray_id)
   (if __tray_id (setq _tray_id __tray_id)) _tray_id)
  (:occupied
   (&optional __occupied)
   (if __occupied (setq _occupied __occupied)) _occupied)
  (:package
   (&optional __package)
   (if __package (setq _package __package)) _package)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint32 _tray_id
    4
    ;; bool _occupied
    1
    ;; string _package
    4 (length _package)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint32 _tray_id
       (write-long _tray_id s)
     ;; bool _occupied
       (if _occupied (write-byte -1 s) (write-byte 0 s))
     ;; string _package
       (write-long (length _package) s) (princ _package s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _tray_id
     (setq _tray_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _occupied
     (setq _occupied (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _package
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _package (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get auto_smart_factory::TraySensor :md5sum-) "725e9e6d6f2ca4eb3fe26342aa2d5180")
(setf (get auto_smart_factory::TraySensor :datatype-) "auto_smart_factory/TraySensor")
(setf (get auto_smart_factory::TraySensor :definition-)
      "time stamp

# tray id
uint32 tray_id

# state of the tray: occupied/free
bool occupied

# name of the package if any is near
string package


")



(provide :auto_smart_factory/TraySensor "725e9e6d6f2ca4eb3fe26342aa2d5180")


