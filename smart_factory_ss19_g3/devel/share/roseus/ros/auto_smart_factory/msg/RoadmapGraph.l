;; Auto-generated. Do not edit!


(when (boundp 'auto_smart_factory::RoadmapGraph)
  (if (not (find-package "AUTO_SMART_FACTORY"))
    (make-package "AUTO_SMART_FACTORY"))
  (shadow 'RoadmapGraph (find-package "AUTO_SMART_FACTORY")))
(unless (find-package "AUTO_SMART_FACTORY::ROADMAPGRAPH")
  (make-package "AUTO_SMART_FACTORY::ROADMAPGRAPH"))

(in-package "ROS")
;;//! \htmlinclude RoadmapGraph.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass auto_smart_factory::RoadmapGraph
  :super ros::object
  :slots (_num_nodes _num_edges _coordinates _x_coord_int _y_coord_int _resolution _height _width _start_nodes _end_nodes _lengths _is_grid_edge ))

(defmethod auto_smart_factory::RoadmapGraph
  (:init
   (&key
    ((:num_nodes __num_nodes) 0)
    ((:num_edges __num_edges) 0)
    ((:coordinates __coordinates) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:x_coord_int __x_coord_int) (make-array 0 :initial-element 0 :element-type :integer))
    ((:y_coord_int __y_coord_int) (make-array 0 :initial-element 0 :element-type :integer))
    ((:resolution __resolution) 0.0)
    ((:height __height) 0.0)
    ((:width __width) 0.0)
    ((:start_nodes __start_nodes) (make-array 0 :initial-element 0 :element-type :integer))
    ((:end_nodes __end_nodes) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lengths __lengths) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:is_grid_edge __is_grid_edge) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _num_nodes (round __num_nodes))
   (setq _num_edges (round __num_edges))
   (setq _coordinates __coordinates)
   (setq _x_coord_int __x_coord_int)
   (setq _y_coord_int __y_coord_int)
   (setq _resolution (float __resolution))
   (setq _height (float __height))
   (setq _width (float __width))
   (setq _start_nodes __start_nodes)
   (setq _end_nodes __end_nodes)
   (setq _lengths __lengths)
   (setq _is_grid_edge __is_grid_edge)
   self)
  (:num_nodes
   (&optional __num_nodes)
   (if __num_nodes (setq _num_nodes __num_nodes)) _num_nodes)
  (:num_edges
   (&optional __num_edges)
   (if __num_edges (setq _num_edges __num_edges)) _num_edges)
  (:coordinates
   (&rest __coordinates)
   (if (keywordp (car __coordinates))
       (send* _coordinates __coordinates)
     (progn
       (if __coordinates (setq _coordinates (car __coordinates)))
       _coordinates)))
  (:x_coord_int
   (&optional __x_coord_int)
   (if __x_coord_int (setq _x_coord_int __x_coord_int)) _x_coord_int)
  (:y_coord_int
   (&optional __y_coord_int)
   (if __y_coord_int (setq _y_coord_int __y_coord_int)) _y_coord_int)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:start_nodes
   (&optional __start_nodes)
   (if __start_nodes (setq _start_nodes __start_nodes)) _start_nodes)
  (:end_nodes
   (&optional __end_nodes)
   (if __end_nodes (setq _end_nodes __end_nodes)) _end_nodes)
  (:lengths
   (&optional __lengths)
   (if __lengths (setq _lengths __lengths)) _lengths)
  (:is_grid_edge
   (&optional __is_grid_edge)
   (if __is_grid_edge (setq _is_grid_edge __is_grid_edge)) _is_grid_edge)
  (:serialization-length
   ()
   (+
    ;; int32 _num_nodes
    4
    ;; int32 _num_edges
    4
    ;; geometry_msgs/Point[] _coordinates
    (apply #'+ (send-all _coordinates :serialization-length)) 4
    ;; int32[] _x_coord_int
    (* 4    (length _x_coord_int)) 4
    ;; int32[] _y_coord_int
    (* 4    (length _y_coord_int)) 4
    ;; float64 _resolution
    8
    ;; float64 _height
    8
    ;; float64 _width
    8
    ;; int32[] _start_nodes
    (* 4    (length _start_nodes)) 4
    ;; int32[] _end_nodes
    (* 4    (length _end_nodes)) 4
    ;; float64[] _lengths
    (* 8    (length _lengths)) 4
    ;; bool[] _is_grid_edge
    (* 1    (length _is_grid_edge)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num_nodes
       (write-long _num_nodes s)
     ;; int32 _num_edges
       (write-long _num_edges s)
     ;; geometry_msgs/Point[] _coordinates
     (write-long (length _coordinates) s)
     (dolist (elem _coordinates)
       (send elem :serialize s)
       )
     ;; int32[] _x_coord_int
     (write-long (length _x_coord_int) s)
     (dotimes (i (length _x_coord_int))
       (write-long (elt _x_coord_int i) s)
       )
     ;; int32[] _y_coord_int
     (write-long (length _y_coord_int) s)
     (dotimes (i (length _y_coord_int))
       (write-long (elt _y_coord_int i) s)
       )
     ;; float64 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32[] _start_nodes
     (write-long (length _start_nodes) s)
     (dotimes (i (length _start_nodes))
       (write-long (elt _start_nodes i) s)
       )
     ;; int32[] _end_nodes
     (write-long (length _end_nodes) s)
     (dotimes (i (length _end_nodes))
       (write-long (elt _end_nodes i) s)
       )
     ;; float64[] _lengths
     (write-long (length _lengths) s)
     (dotimes (i (length _lengths))
       (sys::poke (elt _lengths i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool[] _is_grid_edge
     (write-long (length _is_grid_edge) s)
     (dotimes (i (length _is_grid_edge))
       (if (elt _is_grid_edge i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num_nodes
     (setq _num_nodes (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_edges
     (setq _num_edges (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point[] _coordinates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coordinates (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _coordinates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32[] _x_coord_int
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_coord_int (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _x_coord_int i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _y_coord_int
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_coord_int (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _y_coord_int i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64 _resolution
     (setq _resolution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32[] _start_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _start_nodes (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _start_nodes i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _end_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _end_nodes (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _end_nodes i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _lengths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lengths (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lengths i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool[] _is_grid_edge
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _is_grid_edge (make-list n))
     (dotimes (i n)
     (setf (elt _is_grid_edge i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get auto_smart_factory::RoadmapGraph :md5sum-) "9ee7bfaa057f75fef2b5b8f6e79f93ea")
(setf (get auto_smart_factory::RoadmapGraph :datatype-) "auto_smart_factory/RoadmapGraph")
(setf (get auto_smart_factory::RoadmapGraph :definition-)
      "# Contains the graph created by Roadmap Generator and the corresponding coordinates.

# node names are assumed to be natural numbers from 0 to num_nodes
int32 num_nodes
int32 num_edges

# coordinates that correspond to nodes
geometry_msgs/Point[] coordinates

# integer coordinates correspond to real coordinates but grid nodes have distance 1
int32[] x_coord_int
int32[] y_coord_int

# resolution is the distance between two grid nodes
float64 resolution
float64 height
float64 width

# edges are given as two arrays, third array contains the length (in real value, not int)
int32[] start_nodes
int32[] end_nodes
float64[] lengths

# contains value True if edge is grid edge, False otherwise
bool[] is_grid_edge

# start_nodes.length() == end_nodes.length() == lengths.length() == is_grid_edge.length() must always be true
 



================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :auto_smart_factory/RoadmapGraph "9ee7bfaa057f75fef2b5b8f6e79f93ea")


