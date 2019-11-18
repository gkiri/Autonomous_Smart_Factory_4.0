;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::RequestNewPath)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'RequestNewPath (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::REQUESTNEWPATH")
  (make-package "AUTO_SMART_FACTORY::REQUESTNEWPATH"))
(unless (find-package "AUTO_SMART_FACTORY::REQUESTNEWPATHREQUEST")
  (make-package "AUTO_SMART_FACTORY::REQUESTNEWPATHREQUEST"))
(unless (find-package "AUTO_SMART_FACTORY::REQUESTNEWPATHRESPONSE")
  (make-package "AUTO_SMART_FACTORY::REQUESTNEWPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass auto_smart_factory::RequestNewPathRequest
  :super ros::object
  :slots (_agent_id _next_chunk _start_node _end_node ))

(defmethod auto_smart_factory::RequestNewPathRequest
  (:init
   (&key
    ((:agent_id __agent_id) "")
    ((:next_chunk __next_chunk) nil)
    ((:start_node __start_node) (instance geometry_msgs::Point :init))
    ((:end_node __end_node) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _agent_id (string __agent_id))
   (setq _next_chunk __next_chunk)
   (setq _start_node __start_node)
   (setq _end_node __end_node)
   self)
  (:agent_id
   (&optional __agent_id)
   (if __agent_id (setq _agent_id __agent_id)) _agent_id)
  (:next_chunk
   (&optional __next_chunk)
   (if __next_chunk (setq _next_chunk __next_chunk)) _next_chunk)
  (:start_node
   (&rest __start_node)
   (if (keywordp (car __start_node))
       (send* _start_node __start_node)
     (progn
       (if __start_node (setq _start_node (car __start_node)))
       _start_node)))
  (:end_node
   (&rest __end_node)
   (if (keywordp (car __end_node))
       (send* _end_node __end_node)
     (progn
       (if __end_node (setq _end_node (car __end_node)))
       _end_node)))
  (:serialization-length
   ()
   (+
    ;; string _agent_id
    4 (length _agent_id)
    ;; bool _next_chunk
    1
    ;; geometry_msgs/Point _start_node
    (send _start_node :serialization-length)
    ;; geometry_msgs/Point _end_node
    (send _end_node :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _agent_id
       (write-long (length _agent_id) s) (princ _agent_id s)
     ;; bool _next_chunk
       (if _next_chunk (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _start_node
       (send _start_node :serialize s)
     ;; geometry_msgs/Point _end_node
       (send _end_node :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _agent_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _agent_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _next_chunk
     (setq _next_chunk (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _start_node
     (send _start_node :deserialize buf ptr-) (incf ptr- (send _start_node :serialization-length))
   ;; geometry_msgs/Point _end_node
     (send _end_node :deserialize buf ptr-) (incf ptr- (send _end_node :serialization-length))
   ;;
   self)
  )

(defclass auto_smart_factory::RequestNewPathResponse
  :super ros::object
  :slots (_new_path_nodes _main_path_length _is_last_chunk ))

(defmethod auto_smart_factory::RequestNewPathResponse
  (:init
   (&key
    ((:new_path_nodes __new_path_nodes) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:main_path_length __main_path_length) 0)
    ((:is_last_chunk __is_last_chunk) nil)
    )
   (send-super :init)
   (setq _new_path_nodes __new_path_nodes)
   (setq _main_path_length (round __main_path_length))
   (setq _is_last_chunk __is_last_chunk)
   self)
  (:new_path_nodes
   (&rest __new_path_nodes)
   (if (keywordp (car __new_path_nodes))
       (send* _new_path_nodes __new_path_nodes)
     (progn
       (if __new_path_nodes (setq _new_path_nodes (car __new_path_nodes)))
       _new_path_nodes)))
  (:main_path_length
   (&optional __main_path_length)
   (if __main_path_length (setq _main_path_length __main_path_length)) _main_path_length)
  (:is_last_chunk
   (&optional __is_last_chunk)
   (if __is_last_chunk (setq _is_last_chunk __is_last_chunk)) _is_last_chunk)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _new_path_nodes
    (apply #'+ (send-all _new_path_nodes :serialization-length)) 4
    ;; int32 _main_path_length
    4
    ;; bool _is_last_chunk
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _new_path_nodes
     (write-long (length _new_path_nodes) s)
     (dolist (elem _new_path_nodes)
       (send elem :serialize s)
       )
     ;; int32 _main_path_length
       (write-long _main_path_length s)
     ;; bool _is_last_chunk
       (if _is_last_chunk (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _new_path_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _new_path_nodes (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _new_path_nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _main_path_length
     (setq _main_path_length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_last_chunk
     (setq _is_last_chunk (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass auto_smart_factory::RequestNewPath
  :super ros::object
  :slots ())

(setf (get auto_smart_factory::RequestNewPath :md5sum-) "fc441636b7a0cbdae9c6aa18043de91f")
(setf (get auto_smart_factory::RequestNewPath :datatype-) "auto_smart_factory/RequestNewPath")
(setf (get auto_smart_factory::RequestNewPath :request) auto_smart_factory::RequestNewPathRequest)
(setf (get auto_smart_factory::RequestNewPath :response) auto_smart_factory::RequestNewPathResponse)

(defmethod auto_smart_factory::RequestNewPathRequest
  (:response () (instance auto_smart_factory::RequestNewPathResponse :init)))

(setf (get auto_smart_factory::RequestNewPathRequest :md5sum-) "fc441636b7a0cbdae9c6aa18043de91f")
(setf (get auto_smart_factory::RequestNewPathRequest :datatype-) "auto_smart_factory/RequestNewPathRequest")
(setf (get auto_smart_factory::RequestNewPathRequest :definition-)
      "







string agent_id
bool next_chunk

geometry_msgs/Point start_node
geometry_msgs/Point end_node


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

geometry_msgs/Point[] new_path_nodes
int32 main_path_length
bool is_last_chunk



================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get auto_smart_factory::RequestNewPathResponse :md5sum-) "fc441636b7a0cbdae9c6aa18043de91f")
(setf (get auto_smart_factory::RequestNewPathResponse :datatype-) "auto_smart_factory/RequestNewPathResponse")
(setf (get auto_smart_factory::RequestNewPathResponse :definition-)
      "







string agent_id
bool next_chunk

geometry_msgs/Point start_node
geometry_msgs/Point end_node


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

geometry_msgs/Point[] new_path_nodes
int32 main_path_length
bool is_last_chunk



================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :auto_smart_factory/RequestNewPath "fc441636b7a0cbdae9c6aa18043de91f")


