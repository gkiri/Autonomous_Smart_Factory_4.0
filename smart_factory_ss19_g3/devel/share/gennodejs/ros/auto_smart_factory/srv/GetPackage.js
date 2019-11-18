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

let Package = require('../msg/Package.js');

//-----------------------------------------------------------

class GetPackageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trayId = null;
    }
    else {
      if (initObj.hasOwnProperty('trayId')) {
        this.trayId = initObj.trayId
      }
      else {
        this.trayId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPackageRequest
    // Serialize message field [trayId]
    bufferOffset = _serializer.uint32(obj.trayId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPackageRequest
    let len;
    let data = new GetPackageRequest(null);
    // Deserialize message field [trayId]
    data.trayId = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetPackageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f5323c6390f45b7203b662400a202be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 trayId
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPackageRequest(null);
    if (msg.trayId !== undefined) {
      resolved.trayId = msg.trayId;
    }
    else {
      resolved.trayId = 0
    }

    return resolved;
    }
};

class GetPackageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pkg = null;
    }
    else {
      if (initObj.hasOwnProperty('pkg')) {
        this.pkg = initObj.pkg
      }
      else {
        this.pkg = new Package();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPackageResponse
    // Serialize message field [pkg]
    bufferOffset = Package.serialize(obj.pkg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPackageResponse
    let len;
    let data = new GetPackageResponse(null);
    // Deserialize message field [pkg]
    data.pkg = Package.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetPackageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '964ad4c4a68ecf41ce5ed223a2a4d2cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Package pkg
    
    
    
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
    const resolved = new GetPackageResponse(null);
    if (msg.pkg !== undefined) {
      resolved.pkg = Package.Resolve(msg.pkg)
    }
    else {
      resolved.pkg = new Package()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPackageRequest,
  Response: GetPackageResponse,
  md5sum() { return 'a9957da21dd82923674226f14b0e4338'; },
  datatype() { return 'auto_smart_factory/GetPackage'; }
};
