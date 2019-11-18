// Auto-generated. Do not edit!

// (in-package auto_smart_factory.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotConfiguration = require('../msg/RobotConfiguration.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RegisterAgentChargingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agent_id = null;
      this.robot_configuration = null;
      this.battery_level = null;
    }
    else {
      if (initObj.hasOwnProperty('agent_id')) {
        this.agent_id = initObj.agent_id
      }
      else {
        this.agent_id = '';
      }
      if (initObj.hasOwnProperty('robot_configuration')) {
        this.robot_configuration = initObj.robot_configuration
      }
      else {
        this.robot_configuration = new RobotConfiguration();
      }
      if (initObj.hasOwnProperty('battery_level')) {
        this.battery_level = initObj.battery_level
      }
      else {
        this.battery_level = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterAgentChargingRequest
    // Serialize message field [agent_id]
    bufferOffset = _serializer.string(obj.agent_id, buffer, bufferOffset);
    // Serialize message field [robot_configuration]
    bufferOffset = RobotConfiguration.serialize(obj.robot_configuration, buffer, bufferOffset);
    // Serialize message field [battery_level]
    bufferOffset = _serializer.float32(obj.battery_level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterAgentChargingRequest
    let len;
    let data = new RegisterAgentChargingRequest(null);
    // Deserialize message field [agent_id]
    data.agent_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_configuration]
    data.robot_configuration = RobotConfiguration.deserialize(buffer, bufferOffset);
    // Deserialize message field [battery_level]
    data.battery_level = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.agent_id.length;
    length += RobotConfiguration.getMessageSize(object.robot_configuration);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/RegisterAgentChargingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64598ac1145314990ab53b952b26de5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string agent_id
    RobotConfiguration robot_configuration
    float32 battery_level
    
    ================================================================================
    MSG: auto_smart_factory/RobotConfiguration
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
    const resolved = new RegisterAgentChargingRequest(null);
    if (msg.agent_id !== undefined) {
      resolved.agent_id = msg.agent_id;
    }
    else {
      resolved.agent_id = ''
    }

    if (msg.robot_configuration !== undefined) {
      resolved.robot_configuration = RobotConfiguration.Resolve(msg.robot_configuration)
    }
    else {
      resolved.robot_configuration = new RobotConfiguration()
    }

    if (msg.battery_level !== undefined) {
      resolved.battery_level = msg.battery_level;
    }
    else {
      resolved.battery_level = 0.0
    }

    return resolved;
    }
};

class RegisterAgentChargingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterAgentChargingResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterAgentChargingResponse
    let len;
    let data = new RegisterAgentChargingResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/RegisterAgentChargingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegisterAgentChargingResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RegisterAgentChargingRequest,
  Response: RegisterAgentChargingResponse,
  md5sum() { return '11168f4e7f6e2573e6e16113b1b364fd'; },
  datatype() { return 'auto_smart_factory/RegisterAgentCharging'; }
};
