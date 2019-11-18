// Auto-generated. Do not edit!

// (in-package auto_smart_factory.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let PackageConfiguration = require('../msg/PackageConfiguration.js');

//-----------------------------------------------------------

class GetPackageConfigurationsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPackageConfigurationsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPackageConfigurationsRequest
    let len;
    let data = new GetPackageConfigurationsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetPackageConfigurationsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPackageConfigurationsRequest(null);
    return resolved;
    }
};

class GetPackageConfigurationsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.configs = null;
    }
    else {
      if (initObj.hasOwnProperty('configs')) {
        this.configs = initObj.configs
      }
      else {
        this.configs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPackageConfigurationsResponse
    // Serialize message field [configs]
    // Serialize the length for message field [configs]
    bufferOffset = _serializer.uint32(obj.configs.length, buffer, bufferOffset);
    obj.configs.forEach((val) => {
      bufferOffset = PackageConfiguration.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPackageConfigurationsResponse
    let len;
    let data = new GetPackageConfigurationsResponse(null);
    // Deserialize message field [configs]
    // Deserialize array length for message field [configs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.configs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.configs[i] = PackageConfiguration.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.configs.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetPackageConfigurationsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c79e4d48272b30033eb439274215257';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PackageConfiguration[] configs
    
    
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
    const resolved = new GetPackageConfigurationsResponse(null);
    if (msg.configs !== undefined) {
      resolved.configs = new Array(msg.configs.length);
      for (let i = 0; i < resolved.configs.length; ++i) {
        resolved.configs[i] = PackageConfiguration.Resolve(msg.configs[i]);
      }
    }
    else {
      resolved.configs = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPackageConfigurationsRequest,
  Response: GetPackageConfigurationsResponse,
  md5sum() { return '6c79e4d48272b30033eb439274215257'; },
  datatype() { return 'auto_smart_factory/GetPackageConfigurations'; }
};
