// Auto-generated. Do not edit!

// (in-package auto_smart_factory.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Package = require('../msg/Package.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetPackageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trayId = null;
      this.pkg = null;
    }
    else {
      if (initObj.hasOwnProperty('trayId')) {
        this.trayId = initObj.trayId
      }
      else {
        this.trayId = 0;
      }
      if (initObj.hasOwnProperty('pkg')) {
        this.pkg = initObj.pkg
      }
      else {
        this.pkg = new Package();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPackageRequest
    // Serialize message field [trayId]
    bufferOffset = _serializer.uint32(obj.trayId, buffer, bufferOffset);
    // Serialize message field [pkg]
    bufferOffset = Package.serialize(obj.pkg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPackageRequest
    let len;
    let data = new SetPackageRequest(null);
    // Deserialize message field [trayId]
    data.trayId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pkg]
    data.pkg = Package.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/SetPackageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2bf9725e18218d881c4e6def49493469';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 trayId
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
    const resolved = new SetPackageRequest(null);
    if (msg.trayId !== undefined) {
      resolved.trayId = msg.trayId;
    }
    else {
      resolved.trayId = 0
    }

    if (msg.pkg !== undefined) {
      resolved.pkg = Package.Resolve(msg.pkg)
    }
    else {
      resolved.pkg = new Package()
    }

    return resolved;
    }
};

class SetPackageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPackageResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPackageResponse
    let len;
    let data = new SetPackageResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/SetPackageResponse';
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
    const resolved = new SetPackageResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetPackageRequest,
  Response: SetPackageResponse,
  md5sum() { return '2bf9725e18218d881c4e6def49493469'; },
  datatype() { return 'auto_smart_factory/SetPackage'; }
};
