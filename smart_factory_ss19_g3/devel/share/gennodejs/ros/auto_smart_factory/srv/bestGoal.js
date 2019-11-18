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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class bestGoalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posStart = null;
      this.idTargets = null;
      this.robot = null;
    }
    else {
      if (initObj.hasOwnProperty('posStart')) {
        this.posStart = initObj.posStart
      }
      else {
        this.posStart = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('idTargets')) {
        this.idTargets = initObj.idTargets
      }
      else {
        this.idTargets = [];
      }
      if (initObj.hasOwnProperty('robot')) {
        this.robot = initObj.robot
      }
      else {
        this.robot = new RobotConfiguration();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bestGoalRequest
    // Serialize message field [posStart]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.posStart, buffer, bufferOffset);
    // Serialize message field [idTargets]
    bufferOffset = _arraySerializer.uint32(obj.idTargets, buffer, bufferOffset, null);
    // Serialize message field [robot]
    bufferOffset = RobotConfiguration.serialize(obj.robot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bestGoalRequest
    let len;
    let data = new bestGoalRequest(null);
    // Deserialize message field [posStart]
    data.posStart = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [idTargets]
    data.idTargets = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [robot]
    data.robot = RobotConfiguration.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.idTargets.length;
    length += RobotConfiguration.getMessageSize(object.robot);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/bestGoalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee056599c9a445b32625c6d835007721';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point posStart
    uint32[] idTargets
    RobotConfiguration robot
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    const resolved = new bestGoalRequest(null);
    if (msg.posStart !== undefined) {
      resolved.posStart = geometry_msgs.msg.Point.Resolve(msg.posStart)
    }
    else {
      resolved.posStart = new geometry_msgs.msg.Point()
    }

    if (msg.idTargets !== undefined) {
      resolved.idTargets = msg.idTargets;
    }
    else {
      resolved.idTargets = []
    }

    if (msg.robot !== undefined) {
      resolved.robot = RobotConfiguration.Resolve(msg.robot)
    }
    else {
      resolved.robot = new RobotConfiguration()
    }

    return resolved;
    }
};

class bestGoalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resultPoints = null;
      this.idBestTray = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('resultPoints')) {
        this.resultPoints = initObj.resultPoints
      }
      else {
        this.resultPoints = [];
      }
      if (initObj.hasOwnProperty('idBestTray')) {
        this.idBestTray = initObj.idBestTray
      }
      else {
        this.idBestTray = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bestGoalResponse
    // Serialize message field [resultPoints]
    // Serialize the length for message field [resultPoints]
    bufferOffset = _serializer.uint32(obj.resultPoints.length, buffer, bufferOffset);
    obj.resultPoints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [idBestTray]
    bufferOffset = _serializer.uint32(obj.idBestTray, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bestGoalResponse
    let len;
    let data = new bestGoalResponse(null);
    // Deserialize message field [resultPoints]
    // Deserialize array length for message field [resultPoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.resultPoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.resultPoints[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [idBestTray]
    data.idBestTray = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.resultPoints.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/bestGoalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea589563e8b15fe16becce5d8d340f24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] resultPoints
    uint32 idBestTray
    float64 length
    
    
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
    const resolved = new bestGoalResponse(null);
    if (msg.resultPoints !== undefined) {
      resolved.resultPoints = new Array(msg.resultPoints.length);
      for (let i = 0; i < resolved.resultPoints.length; ++i) {
        resolved.resultPoints[i] = geometry_msgs.msg.Point.Resolve(msg.resultPoints[i]);
      }
    }
    else {
      resolved.resultPoints = []
    }

    if (msg.idBestTray !== undefined) {
      resolved.idBestTray = msg.idBestTray;
    }
    else {
      resolved.idBestTray = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: bestGoalRequest,
  Response: bestGoalResponse,
  md5sum() { return '5663ef057acd0d4321cbcd1579606742'; },
  datatype() { return 'auto_smart_factory/bestGoal'; }
};
