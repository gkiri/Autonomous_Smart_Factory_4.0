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

class inputRequestRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posStart = null;
      this.idTrays = null;
      this.idInput = null;
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
      if (initObj.hasOwnProperty('idInput')) {
        this.idInput = initObj.idInput
      }
      else {
        this.idInput = [];
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
    // Serializes a message object of type inputRequestRequest
    // Serialize message field [posStart]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.posStart, buffer, bufferOffset);
    // Serialize message field [idTrays]
    bufferOffset = _arraySerializer.uint32(obj.idTrays, buffer, bufferOffset, null);
    // Serialize message field [idInput]
    bufferOffset = _arraySerializer.uint32(obj.idInput, buffer, bufferOffset, null);
    // Serialize message field [robot]
    bufferOffset = RobotConfiguration.serialize(obj.robot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type inputRequestRequest
    let len;
    let data = new inputRequestRequest(null);
    // Deserialize message field [posStart]
    data.posStart = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [idTrays]
    data.idTrays = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [idInput]
    data.idInput = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [robot]
    data.robot = RobotConfiguration.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.idTrays.length;
    length += 4 * object.idInput.length;
    length += RobotConfiguration.getMessageSize(object.robot);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/inputRequestRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5f1c61abfa9f0ec5f04789dee1a21a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point posStart
    uint32[] idTrays
    uint32[] idInput
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
    const resolved = new inputRequestRequest(null);
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

    if (msg.idInput !== undefined) {
      resolved.idInput = msg.idInput;
    }
    else {
      resolved.idInput = []
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

class inputRequestResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pointsToInput = null;
      this.pointsToTray = null;
      this.idBest = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('pointsToInput')) {
        this.pointsToInput = initObj.pointsToInput
      }
      else {
        this.pointsToInput = [];
      }
      if (initObj.hasOwnProperty('pointsToTray')) {
        this.pointsToTray = initObj.pointsToTray
      }
      else {
        this.pointsToTray = [];
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
    // Serializes a message object of type inputRequestResponse
    // Serialize message field [pointsToInput]
    // Serialize the length for message field [pointsToInput]
    bufferOffset = _serializer.uint32(obj.pointsToInput.length, buffer, bufferOffset);
    obj.pointsToInput.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pointsToTray]
    // Serialize the length for message field [pointsToTray]
    bufferOffset = _serializer.uint32(obj.pointsToTray.length, buffer, bufferOffset);
    obj.pointsToTray.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [idBest]
    bufferOffset = _serializer.uint32(obj.idBest, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type inputRequestResponse
    let len;
    let data = new inputRequestResponse(null);
    // Deserialize message field [pointsToInput]
    // Deserialize array length for message field [pointsToInput]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pointsToInput = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pointsToInput[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pointsToTray]
    // Deserialize array length for message field [pointsToTray]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pointsToTray = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pointsToTray[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [idBest]
    data.idBest = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.pointsToInput.length;
    length += 24 * object.pointsToTray.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/inputRequestResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21e8c1a09d55cb30253f5a72104c5cd6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] pointsToInput
    geometry_msgs/Point[] pointsToTray
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
    const resolved = new inputRequestResponse(null);
    if (msg.pointsToInput !== undefined) {
      resolved.pointsToInput = new Array(msg.pointsToInput.length);
      for (let i = 0; i < resolved.pointsToInput.length; ++i) {
        resolved.pointsToInput[i] = geometry_msgs.msg.Point.Resolve(msg.pointsToInput[i]);
      }
    }
    else {
      resolved.pointsToInput = []
    }

    if (msg.pointsToTray !== undefined) {
      resolved.pointsToTray = new Array(msg.pointsToTray.length);
      for (let i = 0; i < resolved.pointsToTray.length; ++i) {
        resolved.pointsToTray[i] = geometry_msgs.msg.Point.Resolve(msg.pointsToTray[i]);
      }
    }
    else {
      resolved.pointsToTray = []
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
  Request: inputRequestRequest,
  Response: inputRequestResponse,
  md5sum() { return '84b93cb25f9b147c760d7e90b220604b'; },
  datatype() { return 'auto_smart_factory/inputRequest'; }
};
