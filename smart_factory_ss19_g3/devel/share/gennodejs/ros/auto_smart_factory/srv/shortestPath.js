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

class shortestPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.p1 = null;
      this.p2 = null;
      this.robot = null;
    }
    else {
      if (initObj.hasOwnProperty('p1')) {
        this.p1 = initObj.p1
      }
      else {
        this.p1 = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('p2')) {
        this.p2 = initObj.p2
      }
      else {
        this.p2 = new geometry_msgs.msg.Point();
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
    // Serializes a message object of type shortestPathRequest
    // Serialize message field [p1]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.p1, buffer, bufferOffset);
    // Serialize message field [p2]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.p2, buffer, bufferOffset);
    // Serialize message field [robot]
    bufferOffset = RobotConfiguration.serialize(obj.robot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type shortestPathRequest
    let len;
    let data = new shortestPathRequest(null);
    // Deserialize message field [p1]
    data.p1 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [p2]
    data.p2 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot]
    data.robot = RobotConfiguration.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += RobotConfiguration.getMessageSize(object.robot);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/shortestPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad6fc6ebd965daba53bb6f3b9525c157';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point p1
    geometry_msgs/Point p2
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
    const resolved = new shortestPathRequest(null);
    if (msg.p1 !== undefined) {
      resolved.p1 = geometry_msgs.msg.Point.Resolve(msg.p1)
    }
    else {
      resolved.p1 = new geometry_msgs.msg.Point()
    }

    if (msg.p2 !== undefined) {
      resolved.p2 = geometry_msgs.msg.Point.Resolve(msg.p2)
    }
    else {
      resolved.p2 = new geometry_msgs.msg.Point()
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

class shortestPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resultPoints = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('resultPoints')) {
        this.resultPoints = initObj.resultPoints
      }
      else {
        this.resultPoints = [];
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
    // Serializes a message object of type shortestPathResponse
    // Serialize message field [resultPoints]
    // Serialize the length for message field [resultPoints]
    bufferOffset = _serializer.uint32(obj.resultPoints.length, buffer, bufferOffset);
    obj.resultPoints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type shortestPathResponse
    let len;
    let data = new shortestPathResponse(null);
    // Deserialize message field [resultPoints]
    // Deserialize array length for message field [resultPoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.resultPoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.resultPoints[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.resultPoints.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/shortestPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'adb0f22f75a0a613240ae609a5826559';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] resultPoints
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
    const resolved = new shortestPathResponse(null);
    if (msg.resultPoints !== undefined) {
      resolved.resultPoints = new Array(msg.resultPoints.length);
      for (let i = 0; i < resolved.resultPoints.length; ++i) {
        resolved.resultPoints[i] = geometry_msgs.msg.Point.Resolve(msg.resultPoints[i]);
      }
    }
    else {
      resolved.resultPoints = []
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
  Request: shortestPathRequest,
  Response: shortestPathResponse,
  md5sum() { return 'e02be1ddd821db1040e02af717ecac84'; },
  datatype() { return 'auto_smart_factory/shortestPath'; }
};
