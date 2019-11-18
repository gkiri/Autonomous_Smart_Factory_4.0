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

class StorePackageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.input_tray_ids = null;
      this.storage_tray_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('input_tray_ids')) {
        this.input_tray_ids = initObj.input_tray_ids
      }
      else {
        this.input_tray_ids = [];
      }
      if (initObj.hasOwnProperty('storage_tray_ids')) {
        this.storage_tray_ids = initObj.storage_tray_ids
      }
      else {
        this.storage_tray_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StorePackageRequest
    // Serialize message field [task_id]
    bufferOffset = _serializer.uint32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [input_tray_ids]
    bufferOffset = _arraySerializer.uint32(obj.input_tray_ids, buffer, bufferOffset, null);
    // Serialize message field [storage_tray_ids]
    bufferOffset = _arraySerializer.uint32(obj.storage_tray_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StorePackageRequest
    let len;
    let data = new StorePackageRequest(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [input_tray_ids]
    data.input_tray_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [storage_tray_ids]
    data.storage_tray_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.input_tray_ids.length;
    length += 4 * object.storage_tray_ids.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/StorePackageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78937f32a3a2c21cde28ef2be251388e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 task_id
    uint32[] input_tray_ids
    uint32[] storage_tray_ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StorePackageRequest(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.input_tray_ids !== undefined) {
      resolved.input_tray_ids = msg.input_tray_ids;
    }
    else {
      resolved.input_tray_ids = []
    }

    if (msg.storage_tray_ids !== undefined) {
      resolved.storage_tray_ids = msg.storage_tray_ids;
    }
    else {
      resolved.storage_tray_ids = []
    }

    return resolved;
    }
};

class StorePackageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.storage_id = null;
      this.estimated_time = null;
    }
    else {
      if (initObj.hasOwnProperty('storage_id')) {
        this.storage_id = initObj.storage_id
      }
      else {
        this.storage_id = 0;
      }
      if (initObj.hasOwnProperty('estimated_time')) {
        this.estimated_time = initObj.estimated_time
      }
      else {
        this.estimated_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StorePackageResponse
    // Serialize message field [storage_id]
    bufferOffset = _serializer.uint32(obj.storage_id, buffer, bufferOffset);
    // Serialize message field [estimated_time]
    bufferOffset = _serializer.float64(obj.estimated_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StorePackageResponse
    let len;
    let data = new StorePackageResponse(null);
    // Deserialize message field [storage_id]
    data.storage_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [estimated_time]
    data.estimated_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/StorePackageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf4a6afb292a74d3b885f54964349956';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 storage_id
    float64 estimated_time
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StorePackageResponse(null);
    if (msg.storage_id !== undefined) {
      resolved.storage_id = msg.storage_id;
    }
    else {
      resolved.storage_id = 0
    }

    if (msg.estimated_time !== undefined) {
      resolved.estimated_time = msg.estimated_time;
    }
    else {
      resolved.estimated_time = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: StorePackageRequest,
  Response: StorePackageResponse,
  md5sum() { return '67e49e41b5ecafbc04ac8d70094ced2e'; },
  datatype() { return 'auto_smart_factory/StorePackage'; }
};
