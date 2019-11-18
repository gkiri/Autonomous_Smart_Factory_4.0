// Auto-generated. Do not edit!

// (in-package auto_smart_factory.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PerformTaskTestRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.start_pos = null;
      this.end_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('start_pos')) {
        this.start_pos = initObj.start_pos
      }
      else {
        this.start_pos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('end_pos')) {
        this.end_pos = initObj.end_pos
      }
      else {
        this.end_pos = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PerformTaskTestRequest
    // Serialize message field [task_id]
    bufferOffset = _serializer.int32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [start_pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.start_pos, buffer, bufferOffset);
    // Serialize message field [end_pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.end_pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PerformTaskTestRequest
    let len;
    let data = new PerformTaskTestRequest(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [start_pos]
    data.start_pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_pos]
    data.end_pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/PerformTaskTestRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '347969e57f21de1f57df3ce7cb965f5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 task_id
    geometry_msgs/Point start_pos
    geometry_msgs/Point end_pos
    
    
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
    const resolved = new PerformTaskTestRequest(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.start_pos !== undefined) {
      resolved.start_pos = geometry_msgs.msg.Point.Resolve(msg.start_pos)
    }
    else {
      resolved.start_pos = new geometry_msgs.msg.Point()
    }

    if (msg.end_pos !== undefined) {
      resolved.end_pos = geometry_msgs.msg.Point.Resolve(msg.end_pos)
    }
    else {
      resolved.end_pos = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class PerformTaskTestResponse {
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
    // Serializes a message object of type PerformTaskTestResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PerformTaskTestResponse
    let len;
    let data = new PerformTaskTestResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/PerformTaskTestResponse';
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
    const resolved = new PerformTaskTestResponse(null);
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
  Request: PerformTaskTestRequest,
  Response: PerformTaskTestResponse,
  md5sum() { return '190d24b4aa92517c4ea4ac2d1df79c43'; },
  datatype() { return 'auto_smart_factory/PerformTaskTest'; }
};
