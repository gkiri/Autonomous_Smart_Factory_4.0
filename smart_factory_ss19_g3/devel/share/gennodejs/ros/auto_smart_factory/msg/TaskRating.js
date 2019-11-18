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

class TaskRating {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_id = null;
      this.robot_id = null;
      this.start_id = null;
      this.end_id = null;
      this.reject = null;
      this.score = null;
      this.estimatedDuration = null;
    }
    else {
      if (initObj.hasOwnProperty('request_id')) {
        this.request_id = initObj.request_id
      }
      else {
        this.request_id = 0;
      }
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = '';
      }
      if (initObj.hasOwnProperty('start_id')) {
        this.start_id = initObj.start_id
      }
      else {
        this.start_id = 0;
      }
      if (initObj.hasOwnProperty('end_id')) {
        this.end_id = initObj.end_id
      }
      else {
        this.end_id = 0;
      }
      if (initObj.hasOwnProperty('reject')) {
        this.reject = initObj.reject
      }
      else {
        this.reject = false;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('estimatedDuration')) {
        this.estimatedDuration = initObj.estimatedDuration
      }
      else {
        this.estimatedDuration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskRating
    // Serialize message field [request_id]
    bufferOffset = _serializer.uint32(obj.request_id, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.string(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [start_id]
    bufferOffset = _serializer.uint32(obj.start_id, buffer, bufferOffset);
    // Serialize message field [end_id]
    bufferOffset = _serializer.uint32(obj.end_id, buffer, bufferOffset);
    // Serialize message field [reject]
    bufferOffset = _serializer.bool(obj.reject, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float64(obj.score, buffer, bufferOffset);
    // Serialize message field [estimatedDuration]
    bufferOffset = _serializer.float64(obj.estimatedDuration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskRating
    let len;
    let data = new TaskRating(null);
    // Deserialize message field [request_id]
    data.request_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start_id]
    data.start_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [end_id]
    data.end_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reject]
    data.reject = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [estimatedDuration]
    data.estimatedDuration = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_id.length;
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/TaskRating';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '149ffda46e6e0172c546d8c62178a040';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # response of a robot, if it wants to take a certain task and if so what its score is
    
    uint32 request_id
    string robot_id
    uint32 start_id
    uint32 end_id
    bool reject
    float64 score
    float64 estimatedDuration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskRating(null);
    if (msg.request_id !== undefined) {
      resolved.request_id = msg.request_id;
    }
    else {
      resolved.request_id = 0
    }

    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = ''
    }

    if (msg.start_id !== undefined) {
      resolved.start_id = msg.start_id;
    }
    else {
      resolved.start_id = 0
    }

    if (msg.end_id !== undefined) {
      resolved.end_id = msg.end_id;
    }
    else {
      resolved.end_id = 0
    }

    if (msg.reject !== undefined) {
      resolved.reject = msg.reject;
    }
    else {
      resolved.reject = false
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.estimatedDuration !== undefined) {
      resolved.estimatedDuration = msg.estimatedDuration;
    }
    else {
      resolved.estimatedDuration = 0.0
    }

    return resolved;
    }
};

module.exports = TaskRating;
