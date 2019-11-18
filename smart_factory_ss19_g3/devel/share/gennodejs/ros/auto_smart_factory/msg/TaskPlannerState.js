// Auto-generated. Do not edit!

// (in-package auto_smart_factory.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RequestStatus = require('./RequestStatus.js');
let TaskState = require('./TaskState.js');

//-----------------------------------------------------------

class TaskPlannerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.registered_robots = null;
      this.requests = null;
      this.tasks = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('registered_robots')) {
        this.registered_robots = initObj.registered_robots
      }
      else {
        this.registered_robots = 0;
      }
      if (initObj.hasOwnProperty('requests')) {
        this.requests = initObj.requests
      }
      else {
        this.requests = [];
      }
      if (initObj.hasOwnProperty('tasks')) {
        this.tasks = initObj.tasks
      }
      else {
        this.tasks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskPlannerState
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [registered_robots]
    bufferOffset = _serializer.uint32(obj.registered_robots, buffer, bufferOffset);
    // Serialize message field [requests]
    // Serialize the length for message field [requests]
    bufferOffset = _serializer.uint32(obj.requests.length, buffer, bufferOffset);
    obj.requests.forEach((val) => {
      bufferOffset = RequestStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [tasks]
    // Serialize the length for message field [tasks]
    bufferOffset = _serializer.uint32(obj.tasks.length, buffer, bufferOffset);
    obj.tasks.forEach((val) => {
      bufferOffset = TaskState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskPlannerState
    let len;
    let data = new TaskPlannerState(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [registered_robots]
    data.registered_robots = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [requests]
    // Deserialize array length for message field [requests]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.requests = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.requests[i] = RequestStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [tasks]
    // Deserialize array length for message field [tasks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tasks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tasks[i] = TaskState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.requests.forEach((val) => {
      length += RequestStatus.getMessageSize(val);
    });
    object.tasks.forEach((val) => {
      length += TaskState.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/TaskPlannerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd68409037940351182a0a455e9df6526';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    
    # number of registered robots
    uint32 registered_robots
    
    # States of the current requests
    RequestStatus[] requests
    
    # states of the current tasks
    TaskState[] tasks
    
    
    ================================================================================
    MSG: auto_smart_factory/RequestStatus
    # time stamp for this status message
    time stamp
    
    # id of this request
    uint32 id
    
    # type of request. This is either 'input' or 'output'
    string type
    
    # the package type
    PackageConfiguration pkg_config
    
    # time when this request was created
    time create_time
    
    # message describing the current status of this request
    string status
    
    
    ================================================================================
    MSG: auto_smart_factory/PackageConfiguration
    # package type id (!= package id)
    uint32 id
    
    # package dimensions
    float32 width
    float32 height
    
    # package weight
    float32 weight
    
    
    ================================================================================
    MSG: auto_smart_factory/TaskState
    # unique task id
    uint32 id
    
    # the state of the task. Valid values: 'initialized', 'running', 'waiting for package', ...
    string status
    
    # timings (0 if not yet set)
    
    # time when the associated request was created
    time requestCreateTime
    
    # timestamp when the task was started
    time runTime
    
    # timestamp when the load was acknowledged
    time loadTime
    
    # timestamp when the unload was acknowledged
    time unloadTime
    
    # estimated duration from run to unload estimated by the roadmap planner
    duration estimatedDuration
    
    # task data
    
    # id of the assigned robot
    string robot
    
    # Package this task is dealing with.
    Package package
    
    # The source and the target of this task
    uint32 sourceTray
    uint32 targetTray
    
    
    ================================================================================
    MSG: auto_smart_factory/Package
    # the unique id of this package
    uint32 id
    
    # the id of the package type/configuration
    uint32 type_id
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskPlannerState(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.registered_robots !== undefined) {
      resolved.registered_robots = msg.registered_robots;
    }
    else {
      resolved.registered_robots = 0
    }

    if (msg.requests !== undefined) {
      resolved.requests = new Array(msg.requests.length);
      for (let i = 0; i < resolved.requests.length; ++i) {
        resolved.requests[i] = RequestStatus.Resolve(msg.requests[i]);
      }
    }
    else {
      resolved.requests = []
    }

    if (msg.tasks !== undefined) {
      resolved.tasks = new Array(msg.tasks.length);
      for (let i = 0; i < resolved.tasks.length; ++i) {
        resolved.tasks[i] = TaskState.Resolve(msg.tasks[i]);
      }
    }
    else {
      resolved.tasks = []
    }

    return resolved;
    }
};

module.exports = TaskPlannerState;
