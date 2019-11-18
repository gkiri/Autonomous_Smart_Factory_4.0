// Auto-generated. Do not edit!

// (in-package auto_smart_factory.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrayState = require('./TrayState.js');

//-----------------------------------------------------------

class StorageState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.tray_states = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('tray_states')) {
        this.tray_states = initObj.tray_states
      }
      else {
        this.tray_states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StorageState
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [tray_states]
    // Serialize the length for message field [tray_states]
    bufferOffset = _serializer.uint32(obj.tray_states.length, buffer, bufferOffset);
    obj.tray_states.forEach((val) => {
      bufferOffset = TrayState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StorageState
    let len;
    let data = new StorageState(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [tray_states]
    // Deserialize array length for message field [tray_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tray_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tray_states[i] = TrayState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 14 * object.tray_states.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/StorageState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f58a17d0041d1e3c68f904805f0526cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new StorageState(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.tray_states !== undefined) {
      resolved.tray_states = new Array(msg.tray_states.length);
      for (let i = 0; i < resolved.tray_states.length; ++i) {
        resolved.tray_states[i] = TrayState.Resolve(msg.tray_states[i]);
      }
    }
    else {
      resolved.tray_states = []
    }

    return resolved;
    }
};

module.exports = StorageState;
