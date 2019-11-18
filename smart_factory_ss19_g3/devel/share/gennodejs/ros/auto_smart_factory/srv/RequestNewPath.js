// Auto-generated. Do not edit!

// (in-package auto_smart_factory.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RequestNewPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agent_id = null;
      this.next_chunk = null;
      this.start_node = null;
      this.end_node = null;
    }
    else {
      if (initObj.hasOwnProperty('agent_id')) {
        this.agent_id = initObj.agent_id
      }
      else {
        this.agent_id = '';
      }
      if (initObj.hasOwnProperty('next_chunk')) {
        this.next_chunk = initObj.next_chunk
      }
      else {
        this.next_chunk = false;
      }
      if (initObj.hasOwnProperty('start_node')) {
        this.start_node = initObj.start_node
      }
      else {
        this.start_node = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('end_node')) {
        this.end_node = initObj.end_node
      }
      else {
        this.end_node = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestNewPathRequest
    // Serialize message field [agent_id]
    bufferOffset = _serializer.string(obj.agent_id, buffer, bufferOffset);
    // Serialize message field [next_chunk]
    bufferOffset = _serializer.bool(obj.next_chunk, buffer, bufferOffset);
    // Serialize message field [start_node]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.start_node, buffer, bufferOffset);
    // Serialize message field [end_node]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.end_node, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestNewPathRequest
    let len;
    let data = new RequestNewPathRequest(null);
    // Deserialize message field [agent_id]
    data.agent_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [next_chunk]
    data.next_chunk = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [start_node]
    data.start_node = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_node]
    data.end_node = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.agent_id.length;
    return length + 53;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/RequestNewPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8cfcd85d3fd961cc950795c8464bf18';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestNewPathRequest(null);
    if (msg.agent_id !== undefined) {
      resolved.agent_id = msg.agent_id;
    }
    else {
      resolved.agent_id = ''
    }

    if (msg.next_chunk !== undefined) {
      resolved.next_chunk = msg.next_chunk;
    }
    else {
      resolved.next_chunk = false
    }

    if (msg.start_node !== undefined) {
      resolved.start_node = geometry_msgs.msg.Point.Resolve(msg.start_node)
    }
    else {
      resolved.start_node = new geometry_msgs.msg.Point()
    }

    if (msg.end_node !== undefined) {
      resolved.end_node = geometry_msgs.msg.Point.Resolve(msg.end_node)
    }
    else {
      resolved.end_node = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class RequestNewPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_path_nodes = null;
      this.main_path_length = null;
      this.is_last_chunk = null;
    }
    else {
      if (initObj.hasOwnProperty('new_path_nodes')) {
        this.new_path_nodes = initObj.new_path_nodes
      }
      else {
        this.new_path_nodes = [];
      }
      if (initObj.hasOwnProperty('main_path_length')) {
        this.main_path_length = initObj.main_path_length
      }
      else {
        this.main_path_length = 0;
      }
      if (initObj.hasOwnProperty('is_last_chunk')) {
        this.is_last_chunk = initObj.is_last_chunk
      }
      else {
        this.is_last_chunk = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestNewPathResponse
    // Serialize message field [new_path_nodes]
    // Serialize the length for message field [new_path_nodes]
    bufferOffset = _serializer.uint32(obj.new_path_nodes.length, buffer, bufferOffset);
    obj.new_path_nodes.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [main_path_length]
    bufferOffset = _serializer.int32(obj.main_path_length, buffer, bufferOffset);
    // Serialize message field [is_last_chunk]
    bufferOffset = _serializer.bool(obj.is_last_chunk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestNewPathResponse
    let len;
    let data = new RequestNewPathResponse(null);
    // Deserialize message field [new_path_nodes]
    // Deserialize array length for message field [new_path_nodes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.new_path_nodes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.new_path_nodes[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [main_path_length]
    data.main_path_length = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_last_chunk]
    data.is_last_chunk = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.new_path_nodes.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/RequestNewPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9b541c1ac67c5922456a461c613f073';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/Point[] new_path_nodes
    int32 main_path_length
    bool is_last_chunk
    
    
    
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
    const resolved = new RequestNewPathResponse(null);
    if (msg.new_path_nodes !== undefined) {
      resolved.new_path_nodes = new Array(msg.new_path_nodes.length);
      for (let i = 0; i < resolved.new_path_nodes.length; ++i) {
        resolved.new_path_nodes[i] = geometry_msgs.msg.Point.Resolve(msg.new_path_nodes[i]);
      }
    }
    else {
      resolved.new_path_nodes = []
    }

    if (msg.main_path_length !== undefined) {
      resolved.main_path_length = msg.main_path_length;
    }
    else {
      resolved.main_path_length = 0
    }

    if (msg.is_last_chunk !== undefined) {
      resolved.is_last_chunk = msg.is_last_chunk;
    }
    else {
      resolved.is_last_chunk = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RequestNewPathRequest,
  Response: RequestNewPathResponse,
  md5sum() { return 'fc441636b7a0cbdae9c6aa18043de91f'; },
  datatype() { return 'auto_smart_factory/RequestNewPath'; }
};
