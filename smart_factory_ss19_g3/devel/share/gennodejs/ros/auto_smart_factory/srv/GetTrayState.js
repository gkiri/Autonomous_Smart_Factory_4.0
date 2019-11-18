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

let TrayState = require('../msg/TrayState.js');

//-----------------------------------------------------------

class GetTrayStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trayId = null;
    }
    else {
      if (initObj.hasOwnProperty('trayId')) {
        this.trayId = initObj.trayId
      }
      else {
        this.trayId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTrayStateRequest
    // Serialize message field [trayId]
    bufferOffset = _serializer.uint32(obj.trayId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTrayStateRequest
    let len;
    let data = new GetTrayStateRequest(null);
    // Deserialize message field [trayId]
    data.trayId = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetTrayStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f5323c6390f45b7203b662400a202be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 trayId
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTrayStateRequest(null);
    if (msg.trayId !== undefined) {
      resolved.trayId = msg.trayId;
    }
    else {
      resolved.trayId = 0
    }

    return resolved;
    }
};

class GetTrayStateResponse {
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
        this.state = new TrayState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTrayStateResponse
    // Serialize message field [state]
    bufferOffset = TrayState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTrayStateResponse
    let len;
    let data = new GetTrayStateResponse(null);
    // Deserialize message field [state]
    data.state = TrayState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetTrayStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8fc1740bf5eaf110ae8d47041b731e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TrayState state
    
    
    
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
    const resolved = new GetTrayStateResponse(null);
    if (msg.state !== undefined) {
      resolved.state = TrayState.Resolve(msg.state)
    }
    else {
      resolved.state = new TrayState()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTrayStateRequest,
  Response: GetTrayStateResponse,
  md5sum() { return '9b8e34a8997f8c20f3dac59f7997bfaa'; },
  datatype() { return 'auto_smart_factory/GetTrayState'; }
};
