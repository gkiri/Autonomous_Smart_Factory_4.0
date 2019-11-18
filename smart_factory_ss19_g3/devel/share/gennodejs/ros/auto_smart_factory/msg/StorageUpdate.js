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

class StorageUpdate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.state = null;
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new TrayState();
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StorageUpdate
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = TrayState.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StorageUpdate
    let len;
    let data = new StorageUpdate(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = TrayState.deserialize(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/StorageUpdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83cea01295e4c0b59e3822307599398d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # timestamp of the update
    time stamp
    
    # updated state
    TrayState state
    
    # The action that let to this update
    uint8 UNKNOWN=0
    uint8 RESERVATION=1
    uint8 DERESERVATION=2
    uint8 OCCUPATION=3
    uint8 DEOCCUPATION=4
    
    uint8 action
    
    
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
    const resolved = new StorageUpdate(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.state !== undefined) {
      resolved.state = TrayState.Resolve(msg.state)
    }
    else {
      resolved.state = new TrayState()
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    return resolved;
    }
};

// Constants for message
StorageUpdate.Constants = {
  UNKNOWN: 0,
  RESERVATION: 1,
  DERESERVATION: 2,
  OCCUPATION: 3,
  DEOCCUPATION: 4,
}

module.exports = StorageUpdate;
