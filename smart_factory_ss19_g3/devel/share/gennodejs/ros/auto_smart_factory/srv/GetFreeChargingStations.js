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

let Tray = require('../msg/Tray.js');

//-----------------------------------------------------------

class GetFreeChargingStationsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFreeChargingStationsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFreeChargingStationsRequest
    let len;
    let data = new GetFreeChargingStationsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetFreeChargingStationsRequest';
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
    const resolved = new GetFreeChargingStationsRequest(null);
    return resolved;
    }
};

class GetFreeChargingStationsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.charging_stations = null;
    }
    else {
      if (initObj.hasOwnProperty('charging_stations')) {
        this.charging_stations = initObj.charging_stations
      }
      else {
        this.charging_stations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFreeChargingStationsResponse
    // Serialize message field [charging_stations]
    // Serialize the length for message field [charging_stations]
    bufferOffset = _serializer.uint32(obj.charging_stations.length, buffer, bufferOffset);
    obj.charging_stations.forEach((val) => {
      bufferOffset = Tray.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFreeChargingStationsResponse
    let len;
    let data = new GetFreeChargingStationsResponse(null);
    // Deserialize message field [charging_stations]
    // Deserialize array length for message field [charging_stations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.charging_stations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.charging_stations[i] = Tray.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.charging_stations.forEach((val) => {
      length += Tray.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetFreeChargingStationsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7fb2a4c1b47848e858cbbcedcada5418';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Tray[] charging_stations
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFreeChargingStationsResponse(null);
    if (msg.charging_stations !== undefined) {
      resolved.charging_stations = new Array(msg.charging_stations.length);
      for (let i = 0; i < resolved.charging_stations.length; ++i) {
        resolved.charging_stations[i] = Tray.Resolve(msg.charging_stations[i]);
      }
    }
    else {
      resolved.charging_stations = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetFreeChargingStationsRequest,
  Response: GetFreeChargingStationsResponse,
  md5sum() { return '7fb2a4c1b47848e858cbbcedcada5418'; },
  datatype() { return 'auto_smart_factory/GetFreeChargingStations'; }
};
