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

class CalculateETARequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posStart = null;
      this.posEnd = null;
      this.robotId = null;
    }
    else {
      if (initObj.hasOwnProperty('posStart')) {
        this.posStart = initObj.posStart
      }
      else {
        this.posStart = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('posEnd')) {
        this.posEnd = initObj.posEnd
      }
      else {
        this.posEnd = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('robotId')) {
        this.robotId = initObj.robotId
      }
      else {
        this.robotId = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalculateETARequest
    // Serialize message field [posStart]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.posStart, buffer, bufferOffset);
    // Serialize message field [posEnd]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.posEnd, buffer, bufferOffset);
    // Serialize message field [robotId]
    bufferOffset = _serializer.string(obj.robotId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalculateETARequest
    let len;
    let data = new CalculateETARequest(null);
    // Deserialize message field [posStart]
    data.posStart = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [posEnd]
    data.posEnd = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [robotId]
    data.robotId = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robotId.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/CalculateETARequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18fcc284121793b203f27864cb4d7291';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point posStart
    geometry_msgs/Point posEnd
    string robotId
    
    
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
    const resolved = new CalculateETARequest(null);
    if (msg.posStart !== undefined) {
      resolved.posStart = geometry_msgs.msg.Point.Resolve(msg.posStart)
    }
    else {
      resolved.posStart = new geometry_msgs.msg.Point()
    }

    if (msg.posEnd !== undefined) {
      resolved.posEnd = geometry_msgs.msg.Point.Resolve(msg.posEnd)
    }
    else {
      resolved.posEnd = new geometry_msgs.msg.Point()
    }

    if (msg.robotId !== undefined) {
      resolved.robotId = msg.robotId;
    }
    else {
      resolved.robotId = ''
    }

    return resolved;
    }
};

class CalculateETAResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resultETA = null;
    }
    else {
      if (initObj.hasOwnProperty('resultETA')) {
        this.resultETA = initObj.resultETA
      }
      else {
        this.resultETA = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalculateETAResponse
    // Serialize message field [resultETA]
    bufferOffset = _serializer.float32(obj.resultETA, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalculateETAResponse
    let len;
    let data = new CalculateETAResponse(null);
    // Deserialize message field [resultETA]
    data.resultETA = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/CalculateETAResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7d52bd4353b5c2f2f472394f2f5e3e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float32 resultETA
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CalculateETAResponse(null);
    if (msg.resultETA !== undefined) {
      resolved.resultETA = msg.resultETA;
    }
    else {
      resolved.resultETA = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: CalculateETARequest,
  Response: CalculateETAResponse,
  md5sum() { return '192e38bd534846aab00c4eb9ae76cdf0'; },
  datatype() { return 'auto_smart_factory/CalculateETA'; }
};
