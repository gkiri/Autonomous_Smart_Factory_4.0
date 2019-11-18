// Auto-generated. Do not edit!

// (in-package auto_smart_factory.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Package = require('./Package.js');

//-----------------------------------------------------------

class TaskState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.status = null;
      this.requestCreateTime = null;
      this.runTime = null;
      this.loadTime = null;
      this.unloadTime = null;
      this.estimatedDuration = null;
      this.robot = null;
      this.package = null;
      this.sourceTray = null;
      this.targetTray = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('requestCreateTime')) {
        this.requestCreateTime = initObj.requestCreateTime
      }
      else {
        this.requestCreateTime = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('runTime')) {
        this.runTime = initObj.runTime
      }
      else {
        this.runTime = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('loadTime')) {
        this.loadTime = initObj.loadTime
      }
      else {
        this.loadTime = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('unloadTime')) {
        this.unloadTime = initObj.unloadTime
      }
      else {
        this.unloadTime = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('estimatedDuration')) {
        this.estimatedDuration = initObj.estimatedDuration
      }
      else {
        this.estimatedDuration = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('robot')) {
        this.robot = initObj.robot
      }
      else {
        this.robot = '';
      }
      if (initObj.hasOwnProperty('package')) {
        this.package = initObj.package
      }
      else {
        this.package = new Package();
      }
      if (initObj.hasOwnProperty('sourceTray')) {
        this.sourceTray = initObj.sourceTray
      }
      else {
        this.sourceTray = 0;
      }
      if (initObj.hasOwnProperty('targetTray')) {
        this.targetTray = initObj.targetTray
      }
      else {
        this.targetTray = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskState
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [requestCreateTime]
    bufferOffset = _serializer.time(obj.requestCreateTime, buffer, bufferOffset);
    // Serialize message field [runTime]
    bufferOffset = _serializer.time(obj.runTime, buffer, bufferOffset);
    // Serialize message field [loadTime]
    bufferOffset = _serializer.time(obj.loadTime, buffer, bufferOffset);
    // Serialize message field [unloadTime]
    bufferOffset = _serializer.time(obj.unloadTime, buffer, bufferOffset);
    // Serialize message field [estimatedDuration]
    bufferOffset = _serializer.duration(obj.estimatedDuration, buffer, bufferOffset);
    // Serialize message field [robot]
    bufferOffset = _serializer.string(obj.robot, buffer, bufferOffset);
    // Serialize message field [package]
    bufferOffset = Package.serialize(obj.package, buffer, bufferOffset);
    // Serialize message field [sourceTray]
    bufferOffset = _serializer.uint32(obj.sourceTray, buffer, bufferOffset);
    // Serialize message field [targetTray]
    bufferOffset = _serializer.uint32(obj.targetTray, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskState
    let len;
    let data = new TaskState(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [requestCreateTime]
    data.requestCreateTime = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [runTime]
    data.runTime = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [loadTime]
    data.loadTime = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [unloadTime]
    data.unloadTime = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [estimatedDuration]
    data.estimatedDuration = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [robot]
    data.robot = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [package]
    data.package = Package.deserialize(buffer, bufferOffset);
    // Deserialize message field [sourceTray]
    data.sourceTray = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [targetTray]
    data.targetTray = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    length += object.robot.length;
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/TaskState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b2297c0e49c8c648ed6360e170926b8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TaskState(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.requestCreateTime !== undefined) {
      resolved.requestCreateTime = msg.requestCreateTime;
    }
    else {
      resolved.requestCreateTime = {secs: 0, nsecs: 0}
    }

    if (msg.runTime !== undefined) {
      resolved.runTime = msg.runTime;
    }
    else {
      resolved.runTime = {secs: 0, nsecs: 0}
    }

    if (msg.loadTime !== undefined) {
      resolved.loadTime = msg.loadTime;
    }
    else {
      resolved.loadTime = {secs: 0, nsecs: 0}
    }

    if (msg.unloadTime !== undefined) {
      resolved.unloadTime = msg.unloadTime;
    }
    else {
      resolved.unloadTime = {secs: 0, nsecs: 0}
    }

    if (msg.estimatedDuration !== undefined) {
      resolved.estimatedDuration = msg.estimatedDuration;
    }
    else {
      resolved.estimatedDuration = {secs: 0, nsecs: 0}
    }

    if (msg.robot !== undefined) {
      resolved.robot = msg.robot;
    }
    else {
      resolved.robot = ''
    }

    if (msg.package !== undefined) {
      resolved.package = Package.Resolve(msg.package)
    }
    else {
      resolved.package = new Package()
    }

    if (msg.sourceTray !== undefined) {
      resolved.sourceTray = msg.sourceTray;
    }
    else {
      resolved.sourceTray = 0
    }

    if (msg.targetTray !== undefined) {
      resolved.targetTray = msg.targetTray;
    }
    else {
      resolved.targetTray = 0
    }

    return resolved;
    }
};

module.exports = TaskState;
