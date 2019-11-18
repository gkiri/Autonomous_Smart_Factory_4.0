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

class outputRequestRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posStart = null;
      this.idTrays = null;
      this.idGoal = null;
      this.robot = null;
    }
    else {
      if (initObj.hasOwnProperty('posStart')) {
        this.posStart = initObj.posStart
      }
      else {
        this.posStart = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('idTrays')) {
        this.idTrays = initObj.idTrays
      }
      else {
        this.idTrays = [];
      }
      if (initObj.hasOwnProperty('idGoal')) {
        this.idGoal = initObj.idGoal
      }
      else {
        this.idGoal = [];
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
    // Serializes a message object of type outputRequestRequest
    // Serialize message field [posStart]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.posStart, buffer, bufferOffset);
    // Serialize message field [idTrays]
    bufferOffset = _arraySerializer.uint32(obj.idTrays, buffer, bufferOffset, null);
    // Serialize message field [idGoal]
    bufferOffset = _arraySerializer.uint32(obj.idGoal, buffer, bufferOffset, null);
    // Serialize message field [robot]
    bufferOffset = RobotConfiguration.serialize(obj.robot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type outputRequestRequest
    let len;
    let data = new outputRequestRequest(null);
    // Deserialize message field [posStart]
    data.posStart = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [idTrays]
    data.idTrays = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [idGoal]
    data.idGoal = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [robot]
    data.robot = RobotConfiguration.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.idTrays.length;
    length += 4 * object.idGoal.length;
    length += RobotConfiguration.getMessageSize(object.robot);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/outputRequestRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99ea894e2e112745524c8f106fe9556a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point posStart
    uint32[] idTrays
    uint32[] idGoal
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
    const resolved = new outputRequestRequest(null);
    if (msg.posStart !== undefined) {
      resolved.posStart = geometry_msgs.msg.Point.Resolve(msg.posStart)
    }
    else {
      resolved.posStart = new geometry_msgs.msg.Point()
    }

    if (msg.idTrays !== undefined) {
      resolved.idTrays = msg.idTrays;
    }
    else {
      resolved.idTrays = []
    }

    if (msg.idGoal !== undefined) {
      resolved.idGoal = msg.idGoal;
    }
    else {
      resolved.idGoal = []
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

class outputRequestResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pointsToTray = null;
      this.pointsToOutput = null;
      this.idBest = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('pointsToTray')) {
        this.pointsToTray = initObj.pointsToTray
      }
      else {
        this.pointsToTray = [];
      }
      if (initObj.hasOwnProperty('pointsToOutput')) {
        this.pointsToOutput = initObj.pointsToOutput
      }
      else {
        this.pointsToOutput = [];
      }
      if (initObj.hasOwnProperty('idBest')) {
        this.idBest = initObj.idBest
      }
      else {
        this.idBest = 0;
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
    // Serializes a message object of type outputRequestResponse
    // Serialize message field [pointsToTray]
    // Serialize the length for message field [pointsToTray]
    bufferOffset = _serializer.uint32(obj.pointsToTray.length, buffer, bufferOffset);
    obj.pointsToTray.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pointsToOutput]
    // Serialize the length for message field [pointsToOutput]
    bufferOffset = _serializer.uint32(obj.pointsToOutput.length, buffer, bufferOffset);
    obj.pointsToOutput.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [idBest]
    bufferOffset = _serializer.uint32(obj.idBest, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type outputRequestResponse
    let len;
    let data = new outputRequestResponse(null);
    // Deserialize message field [pointsToTray]
    // Deserialize array length for message field [pointsToTray]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pointsToTray = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pointsToTray[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pointsToOutput]
    // Deserialize array length for message field [pointsToOutput]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pointsToOutput = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pointsToOutput[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [idBest]
    data.idBest = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.pointsToTray.length;
    length += 24 * object.pointsToOutput.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/outputRequestResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a02a86b1edfdc92f7484204d045d30c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] pointsToTray
    geometry_msgs/Point[] pointsToOutput
    uint32 idBest
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
    const resolved = new outputRequestResponse(null);
    if (msg.pointsToTray !== undefined) {
      resolved.pointsToTray = new Array(msg.pointsToTray.length);
      for (let i = 0; i < resolved.pointsToTray.length; ++i) {
        resolved.pointsToTray[i] = geometry_msgs.msg.Point.Resolve(msg.pointsToTray[i]);
      }
    }
    else {
      resolved.pointsToTray = []
    }

    if (msg.pointsToOutput !== undefined) {
      resolved.pointsToOutput = new Array(msg.pointsToOutput.length);
      for (let i = 0; i < resolved.pointsToOutput.length; ++i) {
        resolved.pointsToOutput[i] = geometry_msgs.msg.Point.Resolve(msg.pointsToOutput[i]);
      }
    }
    else {
      resolved.pointsToOutput = []
    }

    if (msg.idBest !== undefined) {
      resolved.idBest = msg.idBest;
    }
    else {
      resolved.idBest = 0
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
  Request: outputRequestRequest,
  Response: outputRequestResponse,
  md5sum() { return 'fe895386dfaeb1d8df370061246b0fbb'; },
  datatype() { return 'auto_smart_factory/outputRequest'; }
};
