;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::PlannedPath)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'PlannedPath (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::PLANNEDPATH")
  (make-package "AUTO_SMART_FACTORY::PLANNEDPATH"))

(in-package "ROS")
;;//! \htmlinclude PlannedPath.msg.html


(defclass auto_smart_factory::PlannedPath
  :super ros::object
  :slots (_agent_id _Pl_path_nodes _time_to_nodes ))

(defmethod auto_smart_factory::PlannedPath
  (:init
   (&key
    ((:agent_id __agent_id) "")
    ((:Pl_path_nodes __Pl_path_nodes) (make-array 0 :initial-element 0 :element-type :integer))
    ((:time_to_nodes __time_to_nodes) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _agent_id (string __agent_id))
   (setq _Pl_path_nodes __Pl_path_nodes)
   (setq _time_to_nodes __time_to_nodes)
   self)
  (:agent_id
   (&optional __agent_id)
   (if __agent_id (setq _agent_id __agent_id)) _agent_id)
  (:Pl_path_nodes
   (&optional __Pl_path_nodes)
   (if __Pl_path_nodes (setq _Pl_path_nodes __Pl_path_nodes)) _Pl_path_nodes)
  (:time_to_nodes
   (&optional __time_to_nodes)
   (if __time_to_nodes (setq _time_to_nodes __time_to_nodes)) _time_to_nodes)
  (:serialization-length
   ()
   (+
    ;; string _agent_id
    4 (length _agent_id)
    ;; int32[] _Pl_path_nodes
    (* 4    (length _Pl_path_nodes)) 4
    ;; float64[] _time_to_nodes
    (* 8    (length _time_to_nodes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _agent_id
       (write-long (length _agent_id) s) (princ _agent_id s)
     ;; int32[] _Pl_path_nodes
     (write-long (length _Pl_path_nodes) s)
     (dotimes (i (length _Pl_path_nodes))
       (write-long (elt _Pl_path_nodes i) s)
       )
     ;; float64[] _time_to_nodes
     (write-long (length _time_to_nodes) s)
     (dotimes (i (length _time_to_nodes))
       (sys::poke (elt _time_to_nodes i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _agent_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _agent_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _Pl_path_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Pl_path_nodes (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Pl_path_nodes i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _time_to_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_to_nodes (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _time_to_nodes i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get auto_smart_factory::PlannedPath :md5sum-) "3b8ce9ba777d4182b126178af71ab240")
(setf (get auto_smart_factory::PlannedPath :datatype-) "auto_smart_factory/PlannedPath")
(setf (get auto_smart_factory::PlannedPath :definition-)
      "#Contains nodes planned path and time to reach those nodes
#Contains array of planned path node and time to reach each node

string agent_id

int32[] Pl_path_nodes

float64[] time_to_nodes

")



(provide :auto_smart_factory/PlannedPath "3b8ce9ba777d4182b126178af71ab240")


