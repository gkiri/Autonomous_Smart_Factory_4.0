// Auto-generated. Do not edit!

// (in-package auto_smart_factory.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Package = require('./Package.js');

//-----------------------------------------------------------

class TrayState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.occupied = null;
      this.available = null;
      this.package = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('occupied')) {
        this.occupied = initObj.occupied
      }
      else {
        this.occupied = false;
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = false;
      }
      if (initObj.hasOwnProperty('package')) {
        this.package = initObj.package
      }
      else {
        this.package = new Package();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrayState
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [occupied]
    bufferOffset = _serializer.bool(obj.occupied, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.bool(obj.available, buffer, bufferOffset);
    // Serialize message field [package]
    bufferOffset = Package.serialize(obj.package, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrayState
    let len;
    let data = new TrayState(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [occupied]
    data.occupied = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [package]
    data.package = Package.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/TrayState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '643c502f6bd6aed46ad54aaea2358f46';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TrayState(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.occupied !== undefined) {
      resolved.occupied = msg.occupied;
    }
    else {
      resolved.occupied = false
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = false
    }

    if (msg.package !== undefined) {
      resolved.package = Package.Resolve(msg.package)
    }
    else {
      resolved.package = new Package()
    }

    return resolved;
    }
};

module.exports = TrayState;
