// Auto-generated. Do not edit!

// (in-package auto_smart_factory.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RobotHeartbeat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.idle = null;
      this.position = null;
      this.orientation = null;
      this.battery_level = null;
      this.eta = null;
      this.with_package = null;
      this.queue_length = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('idle')) {
        this.idle = initObj.idle
      }
      else {
        this.idle = false;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = 0.0;
      }
      if (initObj.hasOwnProperty('battery_level')) {
        this.battery_level = initObj.battery_level
      }
      else {
        this.battery_level = 0.0;
      }
      if (initObj.hasOwnProperty('eta')) {
        this.eta = initObj.eta
      }
      else {
        this.eta = 0.0;
      }
      if (initObj.hasOwnProperty('with_package')) {
        this.with_package = initObj.with_package
      }
      else {
        this.with_package = false;
      }
      if (initObj.hasOwnProperty('queue_length')) {
        this.queue_length = initObj.queue_length
      }
      else {
        this.queue_length = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotHeartbeat
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [idle]
    bufferOffset = _serializer.bool(obj.idle, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = _serializer.float32(obj.orientation, buffer, bufferOffset);
    // Serialize message field [battery_level]
    bufferOffset = _serializer.float32(obj.battery_level, buffer, bufferOffset);
    // Serialize message field [eta]
    bufferOffset = _serializer.float32(obj.eta, buffer, bufferOffset);
    // Serialize message field [with_package]
    bufferOffset = _serializer.bool(obj.with_package, buffer, bufferOffset);
    // Serialize message field [queue_length]
    bufferOffset = _serializer.uint8(obj.queue_length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotHeartbeat
    let len;
    let data = new RobotHeartbeat(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [idle]
    data.idle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_level]
    data.battery_level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [eta]
    data.eta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [with_package]
    data.with_package = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [queue_length]
    data.queue_length = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    return length + 43;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/RobotHeartbeat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba85488467034734d06763799c12f823';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # robot id
    string id
    
    # is the robot idle?
    bool idle
    
    # robot position
    geometry_msgs/Point position
    
    # robot orientation
    float32 orientation
    
    # battery state of robot 0 - 100
    float32 battery_level
    
    # eta for a robot
    float32 eta
    
    # is it carring a package?
    bool with_package
    
    # package queue size
    uint8 queue_length
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotHeartbeat(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.idle !== undefined) {
      resolved.idle = msg.idle;
    }
    else {
      resolved.idle = false
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = 0.0
    }

    if (msg.battery_level !== undefined) {
      resolved.battery_level = msg.battery_level;
    }
    else {
      resolved.battery_level = 0.0
    }

    if (msg.eta !== undefined) {
      resolved.eta = msg.eta;
    }
    else {
      resolved.eta = 0.0
    }

    if (msg.with_package !== undefined) {
      resolved.with_package = msg.with_package;
    }
    else {
      resolved.with_package = false
    }

    if (msg.queue_length !== undefined) {
      resolved.queue_length = msg.queue_length;
    }
    else {
      resolved.queue_length = 0
    }

    return resolved;
    }
};

module.exports = RobotHeartbeat;
