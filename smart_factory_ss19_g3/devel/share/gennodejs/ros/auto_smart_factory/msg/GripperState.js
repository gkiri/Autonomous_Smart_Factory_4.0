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

class GripperState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.loaded = null;
      this.package = null;
    }
    else {
      if (initObj.hasOwnProperty('loaded')) {
        this.loaded = initObj.loaded
      }
      else {
        this.loaded = false;
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
    // Serializes a message object of type GripperState
    // Serialize message field [loaded]
    bufferOffset = _serializer.bool(obj.loaded, buffer, bufferOffset);
    // Serialize message field [package]
    bufferOffset = Package.serialize(obj.package, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperState
    let len;
    let data = new GripperState(null);
    // Deserialize message field [loaded]
    data.loaded = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [package]
    data.package = Package.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/GripperState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b937d7d47f113e6408c1ccaabb941455';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # robot loaded or unloaded succesfully
    bool loaded
    
    # package
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
    const resolved = new GripperState(null);
    if (msg.loaded !== undefined) {
      resolved.loaded = msg.loaded;
    }
    else {
      resolved.loaded = false
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

module.exports = GripperState;
