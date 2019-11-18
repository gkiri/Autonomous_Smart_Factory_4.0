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

class CollisionAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.RobotId = null;
      this.halt = null;
      this.time_to_halt = null;
    }
    else {
      if (initObj.hasOwnProperty('RobotId')) {
        this.RobotId = initObj.RobotId
      }
      else {
        this.RobotId = '';
      }
      if (initObj.hasOwnProperty('halt')) {
        this.halt = initObj.halt
      }
      else {
        this.halt = false;
      }
      if (initObj.hasOwnProperty('time_to_halt')) {
        this.time_to_halt = initObj.time_to_halt
      }
      else {
        this.time_to_halt = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CollisionAction
    // Serialize message field [RobotId]
    bufferOffset = _serializer.string(obj.RobotId, buffer, bufferOffset);
    // Serialize message field [halt]
    bufferOffset = _serializer.bool(obj.halt, buffer, bufferOffset);
    // Serialize message field [time_to_halt]
    bufferOffset = _serializer.float32(obj.time_to_halt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CollisionAction
    let len;
    let data = new CollisionAction(null);
    // Deserialize message field [RobotId]
    data.RobotId = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [halt]
    data.halt = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time_to_halt]
    data.time_to_halt = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.RobotId.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/CollisionAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d85d6f3795d2f6173839c2dc98263c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # publishes robot ID
    # publishes if robot needs to halt completely or only stops moving until a strategy found
    # specifies duration of halt
    
    string RobotId
    bool halt
    float32 time_to_halt
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CollisionAction(null);
    if (msg.RobotId !== undefined) {
      resolved.RobotId = msg.RobotId;
    }
    else {
      resolved.RobotId = ''
    }

    if (msg.halt !== undefined) {
      resolved.halt = msg.halt;
    }
    else {
      resolved.halt = false
    }

    if (msg.time_to_halt !== undefined) {
      resolved.time_to_halt = msg.time_to_halt;
    }
    else {
      resolved.time_to_halt = 0.0
    }

    return resolved;
    }
};

module.exports = CollisionAction;
