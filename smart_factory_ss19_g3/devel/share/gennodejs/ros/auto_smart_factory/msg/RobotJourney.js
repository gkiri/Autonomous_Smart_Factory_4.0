// Auto-generated. Do not edit!

// (in-package auto_smart_factory.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RobotJourney {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.battery_consumption = null;
      this.time_for_completion = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('battery_consumption')) {
        this.battery_consumption = initObj.battery_consumption
      }
      else {
        this.battery_consumption = 0.0;
      }
      if (initObj.hasOwnProperty('time_for_completion')) {
        this.time_for_completion = initObj.time_for_completion
      }
      else {
        this.time_for_completion = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotJourney
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [battery_consumption]
    bufferOffset = _serializer.float32(obj.battery_consumption, buffer, bufferOffset);
    // Serialize message field [time_for_completion]
    bufferOffset = _serializer.int32(obj.time_for_completion, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotJourney
    let len;
    let data = new RobotJourney(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [battery_consumption]
    data.battery_consumption = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_for_completion]
    data.time_for_completion = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/RobotJourney';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88c56eff22bff62afcdddb15045697bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # robot id
    string id
    
    # battery consumption
    float32 battery_consumption
    
    # time it took to complete the task
    int32 time_for_completion
    
    # distance travelled
    float32 distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotJourney(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.battery_consumption !== undefined) {
      resolved.battery_consumption = msg.battery_consumption;
    }
    else {
      resolved.battery_consumption = 0.0
    }

    if (msg.time_for_completion !== undefined) {
      resolved.time_for_completion = msg.time_for_completion;
    }
    else {
      resolved.time_for_completion = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = RobotJourney;
