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

let RobotConfiguration = require('../msg/RobotConfiguration.js');

//-----------------------------------------------------------

class GetRobotConfigurationsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRobotConfigurationsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRobotConfigurationsRequest
    let len;
    let data = new GetRobotConfigurationsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetRobotConfigurationsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRobotConfigurationsRequest(null);
    return resolved;
    }
};

class GetRobotConfigurationsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.configs = null;
    }
    else {
      if (initObj.hasOwnProperty('configs')) {
        this.configs = initObj.configs
      }
      else {
        this.configs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRobotConfigurationsResponse
    // Serialize message field [configs]
    // Serialize the length for message field [configs]
    bufferOffset = _serializer.uint32(obj.configs.length, buffer, bufferOffset);
    obj.configs.forEach((val) => {
      bufferOffset = RobotConfiguration.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRobotConfigurationsResponse
    let len;
    let data = new GetRobotConfigurationsResponse(null);
    // Deserialize message field [configs]
    // Deserialize array length for message field [configs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.configs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.configs[i] = RobotConfiguration.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.configs.forEach((val) => {
      length += RobotConfiguration.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetRobotConfigurationsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4af00ad841eaed229126db0b4270d254';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    RobotConfiguration[] configs
    
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
    const resolved = new GetRobotConfigurationsResponse(null);
    if (msg.configs !== undefined) {
      resolved.configs = new Array(msg.configs.length);
      for (let i = 0; i < resolved.configs.length; ++i) {
        resolved.configs[i] = RobotConfiguration.Resolve(msg.configs[i]);
      }
    }
    else {
      resolved.configs = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetRobotConfigurationsRequest,
  Response: GetRobotConfigurationsResponse,
  md5sum() { return '4af00ad841eaed229126db0b4270d254'; },
  datatype() { return 'auto_smart_factory/GetRobotConfigurations'; }
};
