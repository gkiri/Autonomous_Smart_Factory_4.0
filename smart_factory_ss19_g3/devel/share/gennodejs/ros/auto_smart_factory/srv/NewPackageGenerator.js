// Auto-generated. Do not edit!

// (in-package auto_smart_factory.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Tray = require('../msg/Tray.js');
let Package = require('../msg/Package.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class NewPackageGeneratorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tray = null;
      this.package = null;
    }
    else {
      if (initObj.hasOwnProperty('tray')) {
        this.tray = initObj.tray
      }
      else {
        this.tray = new Tray();
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
    // Serializes a message object of type NewPackageGeneratorRequest
    // Serialize message field [tray]
    bufferOffset = Tray.serialize(obj.tray, buffer, bufferOffset);
    // Serialize message field [package]
    bufferOffset = Package.serialize(obj.package, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NewPackageGeneratorRequest
    let len;
    let data = new NewPackageGeneratorRequest(null);
    // Deserialize message field [tray]
    data.tray = Tray.deserialize(buffer, bufferOffset);
    // Deserialize message field [package]
    data.package = Package.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Tray.getMessageSize(object.tray);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/NewPackageGeneratorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f20699b87e3cc45bc7f15f1a373b84ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    Tray tray
    
    
    Package package
    
    ================================================================================
    MSG: auto_smart_factory/Tray
    # The representation of a warehouse tray
    
    # the unique identifier of this tray
    uint32 id
    
    # the type of the tray. Valid values: 'input', 'output' and 'storage'
    string type
    
    # the coordinates of the center of the tray in the '/map' frame
    float32 x
    float32 y
    
    # the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.
    float32 orientation
    
    # maximum load, i.e. the maximum weight of packages to be put into this tray
    float32 max_load
    
    # package type this tray can carry. 0 means no constraints.
    uint32 package_type
    
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
    const resolved = new NewPackageGeneratorRequest(null);
    if (msg.tray !== undefined) {
      resolved.tray = Tray.Resolve(msg.tray)
    }
    else {
      resolved.tray = new Tray()
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

class NewPackageGeneratorResponse {
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
    // Serializes a message object of type NewPackageGeneratorResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NewPackageGeneratorResponse
    let len;
    let data = new NewPackageGeneratorResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/NewPackageGeneratorResponse';
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
    const resolved = new NewPackageGeneratorResponse(null);
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
  Request: NewPackageGeneratorRequest,
  Response: NewPackageGeneratorResponse,
  md5sum() { return 'e07a595ba2d638991b2afc427b4d8daa'; },
  datatype() { return 'auto_smart_factory/NewPackageGenerator'; }
};
