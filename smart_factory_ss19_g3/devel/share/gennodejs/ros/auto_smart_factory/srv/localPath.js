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

class localPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trayID = null;
      this.obstacleLeft = null;
      this.obstacleFront = null;
      this.obstacleRight = null;
      this.robot = null;
    }
    else {
      if (initObj.hasOwnProperty('trayID')) {
        this.trayID = initObj.trayID
      }
      else {
        this.trayID = 0;
      }
      if (initObj.hasOwnProperty('obstacleLeft')) {
        this.obstacleLeft = initObj.obstacleLeft
      }
      else {
        this.obstacleLeft = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('obstacleFront')) {
        this.obstacleFront = initObj.obstacleFront
      }
      else {
        this.obstacleFront = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('obstacleRight')) {
        this.obstacleRight = initObj.obstacleRight
      }
      else {
        this.obstacleRight = new geometry_msgs.msg.Point();
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
    // Serializes a message object of type localPathRequest
    // Serialize message field [trayID]
    bufferOffset = _serializer.uint32(obj.trayID, buffer, bufferOffset);
    // Serialize message field [obstacleLeft]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.obstacleLeft, buffer, bufferOffset);
    // Serialize message field [obstacleFront]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.obstacleFront, buffer, bufferOffset);
    // Serialize message field [obstacleRight]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.obstacleRight, buffer, bufferOffset);
    // Serialize message field [robot]
    bufferOffset = RobotConfiguration.serialize(obj.robot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type localPathRequest
    let len;
    let data = new localPathRequest(null);
    // Deserialize message field [trayID]
    data.trayID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [obstacleLeft]
    data.obstacleLeft = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacleFront]
    data.obstacleFront = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacleRight]
    data.obstacleRight = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot]
    data.robot = RobotConfiguration.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += RobotConfiguration.getMessageSize(object.robot);
    return length + 76;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/localPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5f4d3c20e760d513e9ea62b4893ebf3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 trayID
    geometry_msgs/Point obstacleLeft
    geometry_msgs/Point obstacleFront
    geometry_msgs/Point obstacleRight
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
    const resolved = new localPathRequest(null);
    if (msg.trayID !== undefined) {
      resolved.trayID = msg.trayID;
    }
    else {
      resolved.trayID = 0
    }

    if (msg.obstacleLeft !== undefined) {
      resolved.obstacleLeft = geometry_msgs.msg.Point.Resolve(msg.obstacleLeft)
    }
    else {
      resolved.obstacleLeft = new geometry_msgs.msg.Point()
    }

    if (msg.obstacleFront !== undefined) {
      resolved.obstacleFront = geometry_msgs.msg.Point.Resolve(msg.obstacleFront)
    }
    else {
      resolved.obstacleFront = new geometry_msgs.msg.Point()
    }

    if (msg.obstacleRight !== undefined) {
      resolved.obstacleRight = geometry_msgs.msg.Point.Resolve(msg.obstacleRight)
    }
    else {
      resolved.obstacleRight = new geometry_msgs.msg.Point()
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

class localPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pointsToTray = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('pointsToTray')) {
        this.pointsToTray = initObj.pointsToTray
      }
      else {
        this.pointsToTray = [];
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
    // Serializes a message object of type localPathResponse
    // Serialize message field [pointsToTray]
    // Serialize the length for message field [pointsToTray]
    bufferOffset = _serializer.uint32(obj.pointsToTray.length, buffer, bufferOffset);
    obj.pointsToTray.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type localPathResponse
    let len;
    let data = new localPathResponse(null);
    // Deserialize message field [pointsToTray]
    // Deserialize array length for message field [pointsToTray]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pointsToTray = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pointsToTray[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.pointsToTray.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/localPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41cfb9067b920543e28a8a54fc1f616f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] pointsToTray
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
    const resolved = new localPathResponse(null);
    if (msg.pointsToTray !== undefined) {
      resolved.pointsToTray = new Array(msg.pointsToTray.length);
      for (let i = 0; i < resolved.pointsToTray.length; ++i) {
        resolved.pointsToTray[i] = geometry_msgs.msg.Point.Resolve(msg.pointsToTray[i]);
      }
    }
    else {
      resolved.pointsToTray = []
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
  Request: localPathRequest,
  Response: localPathResponse,
  md5sum() { return '37b8d65f792389d92caeae306153ccb7'; },
  datatype() { return 'auto_smart_factory/localPath'; }
};
