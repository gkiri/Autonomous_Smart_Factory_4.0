// Auto-generated. Do not edit!

// (in-package auto_smart_factory.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PackageConfiguration = require('./PackageConfiguration.js');

//-----------------------------------------------------------

class RequestStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.id = null;
      this.type = null;
      this.pkg_config = null;
      this.create_time = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('pkg_config')) {
        this.pkg_config = initObj.pkg_config
      }
      else {
        this.pkg_config = new PackageConfiguration();
      }
      if (initObj.hasOwnProperty('create_time')) {
        this.create_time = initObj.create_time
      }
      else {
        this.create_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestStatus
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [pkg_config]
    bufferOffset = PackageConfiguration.serialize(obj.pkg_config, buffer, bufferOffset);
    // Serialize message field [create_time]
    bufferOffset = _serializer.time(obj.create_time, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestStatus
    let len;
    let data = new RequestStatus(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pkg_config]
    data.pkg_config = PackageConfiguration.deserialize(buffer, bufferOffset);
    // Deserialize message field [create_time]
    data.create_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    length += object.status.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/RequestStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc3a3dfca62979fa9ca3cdbb8d695ce9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestStatus(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.pkg_config !== undefined) {
      resolved.pkg_config = PackageConfiguration.Resolve(msg.pkg_config)
    }
    else {
      resolved.pkg_config = new PackageConfiguration()
    }

    if (msg.create_time !== undefined) {
      resolved.create_time = msg.create_time;
    }
    else {
      resolved.create_time = {secs: 0, nsecs: 0}
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    return resolved;
    }
};

module.exports = RequestStatus;
