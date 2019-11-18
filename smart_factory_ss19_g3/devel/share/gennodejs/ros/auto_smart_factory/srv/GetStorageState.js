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

let StorageState = require('../msg/StorageState.js');

//-----------------------------------------------------------

class GetStorageStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetStorageStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStorageStateRequest
    let len;
    let data = new GetStorageStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetStorageStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetStorageStateRequest(null);
    return resolved;
    }
};

class GetStorageStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new StorageState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetStorageStateResponse
    // Serialize message field [state]
    bufferOffset = StorageState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStorageStateResponse
    let len;
    let data = new GetStorageStateResponse(null);
    // Deserialize message field [state]
    data.state = StorageState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += StorageState.getMessageSize(object.state);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetStorageStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8daf70e0db11146ef116dfad6f35d7dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    StorageState state
    
    
    ================================================================================
    MSG: auto_smart_factory/StorageState
    # timestamp of the state
    time stamp
    
    # States of the instances of the three tray types
    TrayState[] tray_states
    
    ================================================================================
    MSG: auto_smart_factory/TrayState
    # the unique tray ID
    uint32 id
    
    # Indicates whether the tray is occupied or not.
    bool occupied
    
    # Availability of the tray. If false the the tray is allocated by a task.
    bool available
    
    # information about the package stored in this tray (only valid if state != free)
    Package package
    
    
    ================================================================================
    MSG: auto_smart_factory/Package
    # the unique id of this package
    uint32 id
    
    # the id of the package type/configuration
    uint32 type_id
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetStorageStateResponse(null);
    if (msg.state !== undefined) {
      resolved.state = StorageState.Resolve(msg.state)
    }
    else {
      resolved.state = new StorageState()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetStorageStateRequest,
  Response: GetStorageStateResponse,
  md5sum() { return '8daf70e0db11146ef116dfad6f35d7dc'; },
  datatype() { return 'auto_smart_factory/GetStorageState'; }
};
