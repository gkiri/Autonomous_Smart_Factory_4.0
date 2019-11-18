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

class AssignChargingTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tray_id = null;
      this.end = null;
    }
    else {
      if (initObj.hasOwnProperty('tray_id')) {
        this.tray_id = initObj.tray_id
      }
      else {
        this.tray_id = 0;
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AssignChargingTaskRequest
    // Serialize message field [tray_id]
    bufferOffset = _serializer.uint32(obj.tray_id, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = _serializer.bool(obj.end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssignChargingTaskRequest
    let len;
    let data = new AssignChargingTaskRequest(null);
    // Deserialize message field [tray_id]
    data.tray_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/AssignChargingTaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95a2f5a2b9c6e2ef20582876b779ac21';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 tray_id
    bool end
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AssignChargingTaskRequest(null);
    if (msg.tray_id !== undefined) {
      resolved.tray_id = msg.tray_id;
    }
    else {
      resolved.tray_id = 0
    }

    if (msg.end !== undefined) {
      resolved.end = msg.end;
    }
    else {
      resolved.end = false
    }

    return resolved;
    }
};

class AssignChargingTaskResponse {
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
    // Serializes a message object of type AssignChargingTaskResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssignChargingTaskResponse
    let len;
    let data = new AssignChargingTaskResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/AssignChargingTaskResponse';
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
    const resolved = new AssignChargingTaskResponse(null);
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
  Request: AssignChargingTaskRequest,
  Response: AssignChargingTaskResponse,
  md5sum() { return 'dd6c73c96eadb2e66af831949e40763a'; },
  datatype() { return 'auto_smart_factory/AssignChargingTask'; }
};
