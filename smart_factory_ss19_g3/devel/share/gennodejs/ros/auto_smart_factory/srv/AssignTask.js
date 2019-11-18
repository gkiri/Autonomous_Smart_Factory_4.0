// Auto-generated. Do not edit!

// (in-package auto_smart_factory.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AssignTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.input_tray = null;
      this.storage_tray = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('input_tray')) {
        this.input_tray = initObj.input_tray
      }
      else {
        this.input_tray = 0;
      }
      if (initObj.hasOwnProperty('storage_tray')) {
        this.storage_tray = initObj.storage_tray
      }
      else {
        this.storage_tray = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AssignTaskRequest
    // Serialize message field [task_id]
    bufferOffset = _serializer.uint32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [input_tray]
    bufferOffset = _serializer.uint32(obj.input_tray, buffer, bufferOffset);
    // Serialize message field [storage_tray]
    bufferOffset = _serializer.uint32(obj.storage_tray, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssignTaskRequest
    let len;
    let data = new AssignTaskRequest(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [input_tray]
    data.input_tray = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [storage_tray]
    data.storage_tray = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/AssignTaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e1025196507fa3ea25794bc2bb0cfe4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 task_id
    uint32 input_tray
    uint32 storage_tray
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AssignTaskRequest(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.input_tray !== undefined) {
      resolved.input_tray = msg.input_tray;
    }
    else {
      resolved.input_tray = 0
    }

    if (msg.storage_tray !== undefined) {
      resolved.storage_tray = msg.storage_tray;
    }
    else {
      resolved.storage_tray = 0
    }

    return resolved;
    }
};

class AssignTaskResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AssignTaskResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssignTaskResponse
    let len;
    let data = new AssignTaskResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/AssignTaskResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AssignTaskResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: AssignTaskRequest,
  Response: AssignTaskResponse,
  md5sum() { return '0c82659e0ca2d9d96ef532df87b96bb0'; },
  datatype() { return 'auto_smart_factory/AssignTask'; }
};
