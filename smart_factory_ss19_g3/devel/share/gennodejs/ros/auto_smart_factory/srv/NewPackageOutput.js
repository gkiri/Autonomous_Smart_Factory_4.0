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

class NewPackageOutputRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output_tray_id = null;
      this.package = null;
    }
    else {
      if (initObj.hasOwnProperty('output_tray_id')) {
        this.output_tray_id = initObj.output_tray_id
      }
      else {
        this.output_tray_id = 0;
      }
      if (initObj.hasOwnProperty('package')) {
        this.package = initObj.package
      }
      else {
        this.package = new Package();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NewPackageOutputRequest
    // Serialize message field [output_tray_id]
    bufferOffset = _serializer.uint32(obj.output_tray_id, buffer, bufferOffset);
    // Serialize message field [package]
    bufferOffset = Package.serialize(obj.package, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NewPackageOutputRequest
    let len;
    let data = new NewPackageOutputRequest(null);
    // Deserialize message field [output_tray_id]
    data.output_tray_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [package]
    data.package = Package.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/NewPackageOutputRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a125f676032abd5b27a2760fddee356c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint32 output_tray_id
    
    
    Package package
    
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
    const resolved = new NewPackageOutputRequest(null);
    if (msg.output_tray_id !== undefined) {
      resolved.output_tray_id = msg.output_tray_id;
    }
    else {
      resolved.output_tray_id = 0
    }

    if (msg.package !== undefined) {
      resolved.package = Package.Resolve(msg.package)
    }
    else {
      resolved.package = new Package()
    }

    return resolved;
    }
};

class NewPackageOutputResponse {
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
    // Serializes a message object of type NewPackageOutputResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NewPackageOutputResponse
    let len;
    let data = new NewPackageOutputResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/NewPackageOutputResponse';
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
    const resolved = new NewPackageOutputResponse(null);
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
  Request: NewPackageOutputRequest,
  Response: NewPackageOutputResponse,
  md5sum() { return '098e14107067978df5c59d83e2abbe5a'; },
  datatype() { return 'auto_smart_factory/NewPackageOutput'; }
};
