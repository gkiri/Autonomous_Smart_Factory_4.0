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

class TraySensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.tray_id = null;
      this.occupied = null;
      this.package = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('tray_id')) {
        this.tray_id = initObj.tray_id
      }
      else {
        this.tray_id = 0;
      }
      if (initObj.hasOwnProperty('occupied')) {
        this.occupied = initObj.occupied
      }
      else {
        this.occupied = false;
      }
      if (initObj.hasOwnProperty('package')) {
        this.package = initObj.package
      }
      else {
        this.package = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TraySensor
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [tray_id]
    bufferOffset = _serializer.uint32(obj.tray_id, buffer, bufferOffset);
    // Serialize message field [occupied]
    bufferOffset = _serializer.bool(obj.occupied, buffer, bufferOffset);
    // Serialize message field [package]
    bufferOffset = _serializer.string(obj.package, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TraySensor
    let len;
    let data = new TraySensor(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [tray_id]
    data.tray_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [occupied]
    data.occupied = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [package]
    data.package = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.package.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/TraySensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '725e9e6d6f2ca4eb3fe26342aa2d5180';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    
    # tray id
    uint32 tray_id
    
    # state of the tray: occupied/free
    bool occupied
    
    # name of the package if any is near
    string package
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TraySensor(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.tray_id !== undefined) {
      resolved.tray_id = msg.tray_id;
    }
    else {
      resolved.tray_id = 0
    }

    if (msg.occupied !== undefined) {
      resolved.occupied = msg.occupied;
    }
    else {
      resolved.occupied = false
    }

    if (msg.package !== undefined) {
      resolved.package = msg.package;
    }
    else {
      resolved.package = ''
    }

    return resolved;
    }
};

module.exports = TraySensor;
