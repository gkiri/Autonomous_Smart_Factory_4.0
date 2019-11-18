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

class TaskStarted {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.started = null;
      this.taskId = null;
    }
    else {
      if (initObj.hasOwnProperty('started')) {
        this.started = initObj.started
      }
      else {
        this.started = false;
      }
      if (initObj.hasOwnProperty('taskId')) {
        this.taskId = initObj.taskId
      }
      else {
        this.taskId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskStarted
    // Serialize message field [started]
    bufferOffset = _serializer.bool(obj.started, buffer, bufferOffset);
    // Serialize message field [taskId]
    bufferOffset = _serializer.uint32(obj.taskId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskStarted
    let len;
    let data = new TaskStarted(null);
    // Deserialize message field [started]
    data.started = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [taskId]
    data.taskId = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/TaskStarted';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8c4bfc821df46bfcf49ec83e2835c26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # message a robot sends to the task planner when it started a task from its queue
    
    bool started
    uint32 taskId
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskStarted(null);
    if (msg.started !== undefined) {
      resolved.started = msg.started;
    }
    else {
      resolved.started = false
    }

    if (msg.taskId !== undefined) {
      resolved.taskId = msg.taskId;
    }
    else {
      resolved.taskId = 0
    }

    return resolved;
    }
};

module.exports = TaskStarted;
