;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::RequestStatus)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'RequestStatus (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::REQUESTSTATUS")
  (make-package "AUTO_SMART_FACTORY::REQUESTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RequestStatus.msg.html


(defclass auto_smart_factory::RequestStatus
  :super ros::object
  :slots (_stamp _id _type _pkg_config _create_time _status ))

(defmethod auto_smart_factory::RequestStatus
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:id __id) 0)
    ((:type __type) "")
    ((:pkg_config __pkg_config) (instance auto_smart_factory::PackageConfiguration :init))
    ((:create_time __create_time) (instance ros::time :init))
    ((:status __status) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _id (round __id))
   (setq _type (string __type))
   (setq _pkg_config __pkg_config)
   (setq _create_time __create_time)
   (setq _status (string __status))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:pkg_config
   (&rest __pkg_config)
   (if (keywordp (car __pkg_config))
       (send* _pkg_config __pkg_config)
     (progn
       (if __pkg_config (setq _pkg_config (car __pkg_config)))
       _pkg_config)))
  (:create_time
   (&optional __create_time)
   (if __create_time (setq _create_time __create_time)) _create_time)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint32 _id
    4
    ;; string _type
    4 (length _type)
    ;; auto_smart_factory/PackageConfiguration _pkg_config
    (send _pkg_config :serialization-length)
    ;; time _create_time
    8
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint32 _id
       (write-long _id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; auto_smart_factory/PackageConfiguration _pkg_config
       (send _pkg_config :serialize s)
     ;; time _create_time
       (write-long (send _create_time :sec) s) (write-long (send _create_time :nsec) s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; auto_smart_factory/PackageConfiguration _pkg_config
     (send _pkg_config :deserialize buf ptr-) (incf ptr- (send _pkg_config :serialization-length))
   ;; time _create_time
     (send _create_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _create_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get auto_smart_factory::RequestStatus :md5sum-) "bc3a3dfca62979fa9ca3cdbb8d695ce9")
(setf (get auto_smart_factory::RequestStatus :datatype-) "auto_smart_factory/RequestStatus")
(setf (get auto_smart_factory::RequestStatus :definition-)
      "# time stamp for this status message
time stamp

# id of this request
uint32 id

# type of request. This is either 'input' or 'output'
string type

# the package type
PackageConfiguration pkg_config

# time when this request was created
time create_time

# message describing the current status of this request
string status


================================================================================
MSG: auto_smart_factory/PackageConfiguration
# package type id (!= package id)
uint32 id

# package dimensions
float32 width
float32 height

# package weight
float32 weight


")



(provide :auto_smart_factory/RequestStatus "bc3a3dfca62979fa9ca3cdbb8d695ce9")


