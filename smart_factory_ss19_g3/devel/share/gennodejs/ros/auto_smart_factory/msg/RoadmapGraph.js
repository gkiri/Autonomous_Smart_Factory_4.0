// Auto-generated. Do not edit!

// (in-package auto_smart_factory.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RoadmapGraph {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_nodes = null;
      this.num_edges = null;
      this.coordinates = null;
      this.x_coord_int = null;
      this.y_coord_int = null;
      this.resolution = null;
      this.height = null;
      this.width = null;
      this.start_nodes = null;
      this.end_nodes = null;
      this.lengths = null;
      this.is_grid_edge = null;
    }
    else {
      if (initObj.hasOwnProperty('num_nodes')) {
        this.num_nodes = initObj.num_nodes
      }
      else {
        this.num_nodes = 0;
      }
      if (initObj.hasOwnProperty('num_edges')) {
        this.num_edges = initObj.num_edges
      }
      else {
        this.num_edges = 0;
      }
      if (initObj.hasOwnProperty('coordinates')) {
        this.coordinates = initObj.coordinates
      }
      else {
        this.coordinates = [];
      }
      if (initObj.hasOwnProperty('x_coord_int')) {
        this.x_coord_int = initObj.x_coord_int
      }
      else {
        this.x_coord_int = [];
      }
      if (initObj.hasOwnProperty('y_coord_int')) {
        this.y_coord_int = initObj.y_coord_int
      }
      else {
        this.y_coord_int = [];
      }
      if (initObj.hasOwnProperty('resolution')) {
        this.resolution = initObj.resolution
      }
      else {
        this.resolution = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('start_nodes')) {
        this.start_nodes = initObj.start_nodes
      }
      else {
        this.start_nodes = [];
      }
      if (initObj.hasOwnProperty('end_nodes')) {
        this.end_nodes = initObj.end_nodes
      }
      else {
        this.end_nodes = [];
      }
      if (initObj.hasOwnProperty('lengths')) {
        this.lengths = initObj.lengths
      }
      else {
        this.lengths = [];
      }
      if (initObj.hasOwnProperty('is_grid_edge')) {
        this.is_grid_edge = initObj.is_grid_edge
      }
      else {
        this.is_grid_edge = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadmapGraph
    // Serialize message field [num_nodes]
    bufferOffset = _serializer.int32(obj.num_nodes, buffer, bufferOffset);
    // Serialize message field [num_edges]
    bufferOffset = _serializer.int32(obj.num_edges, buffer, bufferOffset);
    // Serialize message field [coordinates]
    // Serialize the length for message field [coordinates]
    bufferOffset = _serializer.uint32(obj.coordinates.length, buffer, bufferOffset);
    obj.coordinates.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [x_coord_int]
    bufferOffset = _arraySerializer.int32(obj.x_coord_int, buffer, bufferOffset, null);
    // Serialize message field [y_coord_int]
    bufferOffset = _arraySerializer.int32(obj.y_coord_int, buffer, bufferOffset, null);
    // Serialize message field [resolution]
    bufferOffset = _serializer.float64(obj.resolution, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [start_nodes]
    bufferOffset = _arraySerializer.int32(obj.start_nodes, buffer, bufferOffset, null);
    // Serialize message field [end_nodes]
    bufferOffset = _arraySerializer.int32(obj.end_nodes, buffer, bufferOffset, null);
    // Serialize message field [lengths]
    bufferOffset = _arraySerializer.float64(obj.lengths, buffer, bufferOffset, null);
    // Serialize message field [is_grid_edge]
    bufferOffset = _arraySerializer.bool(obj.is_grid_edge, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadmapGraph
    let len;
    let data = new RoadmapGraph(null);
    // Deserialize message field [num_nodes]
    data.num_nodes = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_edges]
    data.num_edges = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [coordinates]
    // Deserialize array length for message field [coordinates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.coordinates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.coordinates[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [x_coord_int]
    data.x_coord_int = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [y_coord_int]
    data.y_coord_int = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [resolution]
    data.resolution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [start_nodes]
    data.start_nodes = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [end_nodes]
    data.end_nodes = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [lengths]
    data.lengths = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [is_grid_edge]
    data.is_grid_edge = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.coordinates.length;
    length += 4 * object.x_coord_int.length;
    length += 4 * object.y_coord_int.length;
    length += 4 * object.start_nodes.length;
    length += 4 * object.end_nodes.length;
    length += 8 * object.lengths.length;
    length += object.is_grid_edge.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/RoadmapGraph';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ee7bfaa057f75fef2b5b8f6e79f93ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Contains the graph created by Roadmap Generator and the corresponding coordinates.
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadmapGraph(null);
    if (msg.num_nodes !== undefined) {
      resolved.num_nodes = msg.num_nodes;
    }
    else {
      resolved.num_nodes = 0
    }

    if (msg.num_edges !== undefined) {
      resolved.num_edges = msg.num_edges;
    }
    else {
      resolved.num_edges = 0
    }

    if (msg.coordinates !== undefined) {
      resolved.coordinates = new Array(msg.coordinates.length);
      for (let i = 0; i < resolved.coordinates.length; ++i) {
        resolved.coordinates[i] = geometry_msgs.msg.Point.Resolve(msg.coordinates[i]);
      }
    }
    else {
      resolved.coordinates = []
    }

    if (msg.x_coord_int !== undefined) {
      resolved.x_coord_int = msg.x_coord_int;
    }
    else {
      resolved.x_coord_int = []
    }

    if (msg.y_coord_int !== undefined) {
      resolved.y_coord_int = msg.y_coord_int;
    }
    else {
      resolved.y_coord_int = []
    }

    if (msg.resolution !== undefined) {
      resolved.resolution = msg.resolution;
    }
    else {
      resolved.resolution = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.start_nodes !== undefined) {
      resolved.start_nodes = msg.start_nodes;
    }
    else {
      resolved.start_nodes = []
    }

    if (msg.end_nodes !== undefined) {
      resolved.end_nodes = msg.end_nodes;
    }
    else {
      resolved.end_nodes = []
    }

    if (msg.lengths !== undefined) {
      resolved.lengths = msg.lengths;
    }
    else {
      resolved.lengths = []
    }

    if (msg.is_grid_edge !== undefined) {
      resolved.is_grid_edge = msg.is_grid_edge;
    }
    else {
      resolved.is_grid_edge = []
    }

    return resolved;
    }
};

module.exports = RoadmapGraph;
