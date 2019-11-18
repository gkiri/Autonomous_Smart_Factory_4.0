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

class TaskAnnouncement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_id = null;
      this.start_ids = null;
      this.end_ids = null;
      this.timeout = null;
    }
    else {
      if (initObj.hasOwnProperty('request_id')) {
        this.request_id = initObj.request_id
      }
      else {
        this.request_id = 0;
      }
      if (initObj.hasOwnProperty('start_ids')) {
        this.start_ids = initObj.start_ids
      }
      else {
        this.start_ids = [];
      }
      if (initObj.hasOwnProperty('end_ids')) {
        this.end_ids = initObj.end_ids
      }
      else {
        this.end_ids = [];
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskAnnouncement
    // Serialize message field [request_id]
    bufferOffset = _serializer.uint32(obj.request_id, buffer, bufferOffset);
    // Serialize message field [start_ids]
    bufferOffset = _arraySerializer.uint32(obj.start_ids, buffer, bufferOffset, null);
    // Serialize message field [end_ids]
    bufferOffset = _arraySerializer.uint32(obj.end_ids, buffer, bufferOffset, null);
    // Serialize message field [timeout]
    bufferOffset = _serializer.time(obj.timeout, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskAnnouncement
    let len;
    let data = new TaskAnnouncement(null);
    // Deserialize message field [request_id]
    data.request_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [start_ids]
    data.start_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [end_ids]
    data.end_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [timeout]
    data.timeout = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.start_ids.length;
    length += 4 * object.end_ids.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/TaskAnnouncement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8ab73e2a72622150a41cf7e28715948';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Announces a task to the robots.
    
    uint32 request_id
    uint32[] start_ids
    uint32[] end_ids
    time timeout
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskAnnouncement(null);
    if (msg.request_id !== undefined) {
      resolved.request_id = msg.request_id;
    }
    else {
      resolved.request_id = 0
    }

    if (msg.start_ids !== undefined) {
      resolved.start_ids = msg.start_ids;
    }
    else {
      resolved.start_ids = []
    }

    if (msg.end_ids !== undefined) {
      resolved.end_ids = msg.end_ids;
    }
    else {
      resolved.end_ids = []
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = TaskAnnouncement;
