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

class RobotConfiguration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type_name = null;
      this.charging_rate = null;
      this.discharging_rate = null;
      this.min_linear_vel = null;
      this.max_linear_vel = null;
      this.max_angular_vel = null;
      this.radius = null;
      this.max_load = null;
    }
    else {
      if (initObj.hasOwnProperty('type_name')) {
        this.type_name = initObj.type_name
      }
      else {
        this.type_name = '';
      }
      if (initObj.hasOwnProperty('charging_rate')) {
        this.charging_rate = initObj.charging_rate
      }
      else {
        this.charging_rate = 0.0;
      }
      if (initObj.hasOwnProperty('discharging_rate')) {
        this.discharging_rate = initObj.discharging_rate
      }
      else {
        this.discharging_rate = 0.0;
      }
      if (initObj.hasOwnProperty('min_linear_vel')) {
        this.min_linear_vel = initObj.min_linear_vel
      }
      else {
        this.min_linear_vel = 0.0;
      }
      if (initObj.hasOwnProperty('max_linear_vel')) {
        this.max_linear_vel = initObj.max_linear_vel
      }
      else {
        this.max_linear_vel = 0.0;
      }
      if (initObj.hasOwnProperty('max_angular_vel')) {
        this.max_angular_vel = initObj.max_angular_vel
      }
      else {
        this.max_angular_vel = 0.0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('max_load')) {
        this.max_load = initObj.max_load
      }
      else {
        this.max_load = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotConfiguration
    // Serialize message field [type_name]
    bufferOffset = _serializer.string(obj.type_name, buffer, bufferOffset);
    // Serialize message field [charging_rate]
    bufferOffset = _serializer.float32(obj.charging_rate, buffer, bufferOffset);
    // Serialize message field [discharging_rate]
    bufferOffset = _serializer.float32(obj.discharging_rate, buffer, bufferOffset);
    // Serialize message field [min_linear_vel]
    bufferOffset = _serializer.float32(obj.min_linear_vel, buffer, bufferOffset);
    // Serialize message field [max_linear_vel]
    bufferOffset = _serializer.float32(obj.max_linear_vel, buffer, bufferOffset);
    // Serialize message field [max_angular_vel]
    bufferOffset = _serializer.float32(obj.max_angular_vel, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float32(obj.radius, buffer, bufferOffset);
    // Serialize message field [max_load]
    bufferOffset = _serializer.float32(obj.max_load, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotConfiguration
    let len;
    let data = new RobotConfiguration(null);
    // Deserialize message field [type_name]
    data.type_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [charging_rate]
    data.charging_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [discharging_rate]
    data.discharging_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_linear_vel]
    data.min_linear_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_linear_vel]
    data.max_linear_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_angular_vel]
    data.max_angular_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_load]
    data.max_load = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type_name.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/RobotConfiguration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a088bac167b7075ab4169c49586042e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # name of this robot type
    string type_name
    
    # charging rate of the battery
    float32 charging_rate
    
    # discharging rate of the battery
    float32 discharging_rate
    
    # minimum linear velocity in [m/s]
    float32 min_linear_vel
    
    # maximum linear velocity in [m/s]
    float32 max_linear_vel
    
    # maximum angular velocity in [rad/s]
    float32 max_angular_vel
    
    # maximum radius of the robot
    float32 radius
    
    # maximum package weight in [kg]
    float32 max_load
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotConfiguration(null);
    if (msg.type_name !== undefined) {
      resolved.type_name = msg.type_name;
    }
    else {
      resolved.type_name = ''
    }

    if (msg.charging_rate !== undefined) {
      resolved.charging_rate = msg.charging_rate;
    }
    else {
      resolved.charging_rate = 0.0
    }

    if (msg.discharging_rate !== undefined) {
      resolved.discharging_rate = msg.discharging_rate;
    }
    else {
      resolved.discharging_rate = 0.0
    }

    if (msg.min_linear_vel !== undefined) {
      resolved.min_linear_vel = msg.min_linear_vel;
    }
    else {
      resolved.min_linear_vel = 0.0
    }

    if (msg.max_linear_vel !== undefined) {
      resolved.max_linear_vel = msg.max_linear_vel;
    }
    else {
      resolved.max_linear_vel = 0.0
    }

    if (msg.max_angular_vel !== undefined) {
      resolved.max_angular_vel = msg.max_angular_vel;
    }
    else {
      resolved.max_angular_vel = 0.0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.max_load !== undefined) {
      resolved.max_load = msg.max_load;
    }
    else {
      resolved.max_load = 0.0
    }

    return resolved;
    }
};

module.exports = RobotConfiguration;
