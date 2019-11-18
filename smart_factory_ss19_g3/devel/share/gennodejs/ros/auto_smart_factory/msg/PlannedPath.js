// Auto-generated. Do not edit!

// (in-package auto_smart_factory.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PlannedPath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agent_id = null;
      this.Pl_path_nodes = null;
      this.time_to_nodes = null;
    }
    else {
      if (initObj.hasOwnProperty('agent_id')) {
        this.agent_id = initObj.agent_id
      }
      else {
        this.agent_id = '';
      }
      if (initObj.hasOwnProperty('Pl_path_nodes')) {
        this.Pl_path_nodes = initObj.Pl_path_nodes
      }
      else {
        this.Pl_path_nodes = [];
      }
      if (initObj.hasOwnProperty('time_to_nodes')) {
        this.time_to_nodes = initObj.time_to_nodes
      }
      else {
        this.time_to_nodes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlannedPath
    // Serialize message field [agent_id]
    bufferOffset = _serializer.string(obj.agent_id, buffer, bufferOffset);
    // Serialize message field [Pl_path_nodes]
    bufferOffset = _arraySerializer.int32(obj.Pl_path_nodes, buffer, bufferOffset, null);
    // Serialize message field [time_to_nodes]
    bufferOffset = _arraySerializer.float64(obj.time_to_nodes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannedPath
    let len;
    let data = new PlannedPath(null);
    // Deserialize message field [agent_id]
    data.agent_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Pl_path_nodes]
    data.Pl_path_nodes = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [time_to_nodes]
    data.time_to_nodes = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.agent_id.length;
    length += 4 * object.Pl_path_nodes.length;
    length += 8 * object.time_to_nodes.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/PlannedPath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b8ce9ba777d4182b126178af71ab240';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Contains nodes planned path and time to reach those nodes
    #Contains array of planned path node and time to reach each node
    
    string agent_id
    
    int32[] Pl_path_nodes
    
    float64[] time_to_nodes
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlannedPath(null);
    if (msg.agent_id !== undefined) {
      resolved.agent_id = msg.agent_id;
    }
    else {
      resolved.agent_id = ''
    }

    if (msg.Pl_path_nodes !== undefined) {
      resolved.Pl_path_nodes = msg.Pl_path_nodes;
    }
    else {
      resolved.Pl_path_nodes = []
    }

    if (msg.time_to_nodes !== undefined) {
      resolved.time_to_nodes = msg.time_to_nodes;
    }
    else {
      resolved.time_to_nodes = []
    }

    return resolved;
    }
};

module.exports = PlannedPath;
