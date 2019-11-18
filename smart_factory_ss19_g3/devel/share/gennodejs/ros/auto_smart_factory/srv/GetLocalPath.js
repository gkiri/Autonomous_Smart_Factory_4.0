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

class GetLocalPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agent_id = null;
      this.robots_path = null;
      this.robot_config = null;
      this.next_position = null;
      this.goal_position = null;
      this.robot_position = null;
      this.obstacles = null;
    }
    else {
      if (initObj.hasOwnProperty('agent_id')) {
        this.agent_id = initObj.agent_id
      }
      else {
        this.agent_id = '';
      }
      if (initObj.hasOwnProperty('robots_path')) {
        this.robots_path = initObj.robots_path
      }
      else {
        this.robots_path = [];
      }
      if (initObj.hasOwnProperty('robot_config')) {
        this.robot_config = initObj.robot_config
      }
      else {
        this.robot_config = new RobotConfiguration();
      }
      if (initObj.hasOwnProperty('next_position')) {
        this.next_position = initObj.next_position
      }
      else {
        this.next_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('goal_position')) {
        this.goal_position = initObj.goal_position
      }
      else {
        this.goal_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('robot_position')) {
        this.robot_position = initObj.robot_position
      }
      else {
        this.robot_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetLocalPathRequest
    // Serialize message field [agent_id]
    bufferOffset = _serializer.string(obj.agent_id, buffer, bufferOffset);
    // Serialize message field [robots_path]
    // Serialize the length for message field [robots_path]
    bufferOffset = _serializer.uint32(obj.robots_path.length, buffer, bufferOffset);
    obj.robots_path.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [robot_config]
    bufferOffset = RobotConfiguration.serialize(obj.robot_config, buffer, bufferOffset);
    // Serialize message field [next_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.next_position, buffer, bufferOffset);
    // Serialize message field [goal_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.goal_position, buffer, bufferOffset);
    // Serialize message field [robot_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.robot_position, buffer, bufferOffset);
    // Serialize message field [obstacles]
    // Serialize the length for message field [obstacles]
    bufferOffset = _serializer.uint32(obj.obstacles.length, buffer, bufferOffset);
    obj.obstacles.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLocalPathRequest
    let len;
    let data = new GetLocalPathRequest(null);
    // Deserialize message field [agent_id]
    data.agent_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robots_path]
    // Deserialize array length for message field [robots_path]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robots_path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robots_path[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [robot_config]
    data.robot_config = RobotConfiguration.deserialize(buffer, bufferOffset);
    // Deserialize message field [next_position]
    data.next_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_position]
    data.goal_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_position]
    data.robot_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacles]
    // Deserialize array length for message field [obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.agent_id.length;
    length += 24 * object.robots_path.length;
    length += RobotConfiguration.getMessageSize(object.robot_config);
    length += 24 * object.obstacles.length;
    return length + 84;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetLocalPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db492bb913446481ce8c861eb7241b44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string agent_id
    geometry_msgs/Point[] robots_path
    RobotConfiguration robot_config
    geometry_msgs/Point next_position
    geometry_msgs/Point goal_position
    geometry_msgs/Point robot_position
    
    
    geometry_msgs/Point[] obstacles
    
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
    const resolved = new GetLocalPathRequest(null);
    if (msg.agent_id !== undefined) {
      resolved.agent_id = msg.agent_id;
    }
    else {
      resolved.agent_id = ''
    }

    if (msg.robots_path !== undefined) {
      resolved.robots_path = new Array(msg.robots_path.length);
      for (let i = 0; i < resolved.robots_path.length; ++i) {
        resolved.robots_path[i] = geometry_msgs.msg.Point.Resolve(msg.robots_path[i]);
      }
    }
    else {
      resolved.robots_path = []
    }

    if (msg.robot_config !== undefined) {
      resolved.robot_config = RobotConfiguration.Resolve(msg.robot_config)
    }
    else {
      resolved.robot_config = new RobotConfiguration()
    }

    if (msg.next_position !== undefined) {
      resolved.next_position = geometry_msgs.msg.Point.Resolve(msg.next_position)
    }
    else {
      resolved.next_position = new geometry_msgs.msg.Point()
    }

    if (msg.goal_position !== undefined) {
      resolved.goal_position = geometry_msgs.msg.Point.Resolve(msg.goal_position)
    }
    else {
      resolved.goal_position = new geometry_msgs.msg.Point()
    }

    if (msg.robot_position !== undefined) {
      resolved.robot_position = geometry_msgs.msg.Point.Resolve(msg.robot_position)
    }
    else {
      resolved.robot_position = new geometry_msgs.msg.Point()
    }

    if (msg.obstacles !== undefined) {
      resolved.obstacles = new Array(msg.obstacles.length);
      for (let i = 0; i < resolved.obstacles.length; ++i) {
        resolved.obstacles[i] = geometry_msgs.msg.Point.Resolve(msg.obstacles[i]);
      }
    }
    else {
      resolved.obstacles = []
    }

    return resolved;
    }
};

class GetLocalPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = [];
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
    // Serializes a message object of type GetLocalPathResponse
    // Serialize message field [path]
    // Serialize the length for message field [path]
    bufferOffset = _serializer.uint32(obj.path.length, buffer, bufferOffset);
    obj.path.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLocalPathResponse
    let len;
    let data = new GetLocalPathResponse(null);
    // Deserialize message field [path]
    // Deserialize array length for message field [path]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.path.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetLocalPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05f2a111bf2586d56e616a7872fdb2c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] path
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
    const resolved = new GetLocalPathResponse(null);
    if (msg.path !== undefined) {
      resolved.path = new Array(msg.path.length);
      for (let i = 0; i < resolved.path.length; ++i) {
        resolved.path[i] = geometry_msgs.msg.Point.Resolve(msg.path[i]);
      }
    }
    else {
      resolved.path = []
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
  Request: GetLocalPathRequest,
  Response: GetLocalPathResponse,
  md5sum() { return '24de2ce6824365cb99b622cce140382d'; },
  datatype() { return 'auto_smart_factory/GetLocalPath'; }
};
