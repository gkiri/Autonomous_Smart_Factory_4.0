;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::GetFreeChargingStations)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'GetFreeChargingStations (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::GETFREECHARGINGSTATIONS")
  (make-package "AUTO_SMART_FACTORY::GETFREECHARGINGSTATIONS"))
(unless (find-package "AUTO_SMART_FACTORY::GETFREECHARGINGSTATIONSREQUEST")
  (make-package "AUTO_SMART_FACTORY::GETFREECHARGINGSTATIONSREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::GETFREECHARGINGSTATIONSRESPONSE")
  (make-package "AUTO_SMART_FACTORY::GETFREECHARGINGSTATIONSRESPONSE"))

(in-package "ROS")





(defclass auto_smart_factory::GetFreeChargingStationsRequest
  :super ros::object
  :slots ())

(defmethod auto_smart_factory::GetFreeChargingStationsRequest
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

(defclass auto_smart_factory::GetFreeChargingStationsResponse
  :super ros::object
  :slots (_charging_stations ))

(defmethod auto_smart_factory::GetFreeChargingStationsResponse
  (:init
   (&key
    ((:charging_stations __charging_stations) (let (r) (dotimes (i 0) (push (instance auto_smart_factory::Tray :init) r)) r))
    )
   (send-super :init)
   (setq _charging_stations __charging_stations)
   self)
  (:charging_stations
   (&rest __charging_stations)
   (if (keywordp (car __charging_stations))
       (send* _charging_stations __charging_stations)
     (progn
       (if __charging_stations (setq _charging_stations (car __charging_stations)))
       _charging_stations)))
  (:serialization-length
   ()
   (+
    ;; auto_smart_factory/Tray[] _charging_stations
    (apply #'+ (send-all _charging_stations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; auto_smart_factory/Tray[] _charging_stations
     (write-long (length _charging_stations) s)
     (dolist (elem _charging_stations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; auto_smart_factory/Tray[] _charging_stations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _charging_stations (let (r) (dotimes (i n) (push (instance auto_smart_factory::Tray :init) r)) r))
     (dolist (elem- _charging_stations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass auto_smart_factory::GetFreeChargingStations
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::GetFreeChargingStations :md5sum-) "7fb2a4c1b47848e858cbbcedcada5418")
(setf (get auto_smart_factory::GetFreeChargingStations :datatype-) "auto_smart_factory/GetFreeChargingStations")
(setf (get auto_smart_factory::GetFreeChargingStations :request) auto_smart_factory::GetFreeChargingStationsRequest)
(setf (get auto_smart_factory::GetFreeChargingStations :response) auto_smart_factory::GetFreeChargingStationsResponse)

(defmethod auto_smart_factory::GetFreeChargingStationsRequest
  (:response () (instance auto_smart_factory::GetFreeChargingStationsResponse :init)))

(setf (get auto_smart_factory::GetFreeChargingStationsRequest :md5sum-) "7fb2a4c1b47848e858cbbcedcada5418")
(setf (get auto_smart_factory::GetFreeChargingStationsRequest :datatype-) "auto_smart_factory/GetFreeChargingStationsRequest")
(setf (get auto_smart_factory::GetFreeChargingStationsRequest :definition-)
      "---
Tray[] charging_stations


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
")

(setf (get auto_smart_factory::GetFreeChargingStationsResponse :md5sum-) "7fb2a4c1b47848e858cbbcedcada5418")
(setf (get auto_smart_factory::GetFreeChargingStationsResponse :datatype-) "auto_smart_factory/GetFreeChargingStationsResponse")
(setf (get auto_smart_factory::GetFreeChargingStationsResponse :definition-)
      "---
Tray[] charging_stations


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
")



(provide :auto_smart_factory/GetFreeChargingStations "7fb2a4c1b47848e858cbbcedcada5418")


