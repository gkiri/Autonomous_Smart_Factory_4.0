// Auto-generated. Do not edit!

// (in-package auto_smart_factory.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PackagePool {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drop_location = null;
      this.stacking_area = null;
    }
    else {
      if (initObj.hasOwnProperty('drop_location')) {
        this.drop_location = initObj.drop_location
      }
      else {
        this.drop_location = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('stacking_area')) {
        this.stacking_area = initObj.stacking_area
      }
      else {
        this.stacking_area = new Array(2).fill(new geometry_msgs.msg.Point32());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PackagePool
    // Serialize message field [drop_location]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.drop_location, buffer, bufferOffset);
    // Check that the constant length array field [stacking_area] has the right length
    if (obj.stacking_area.length !== 2) {
      throw new Error('Unable to serialize array field stacking_area - length must be 2')
    }
    // Serialize message field [stacking_area]
    obj.stacking_area.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PackagePool
    let len;
    let data = new PackagePool(null);
    // Deserialize message field [drop_location]
    data.drop_location = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [stacking_area]
    len = 2;
    data.stacking_area = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.stacking_area[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/PackagePool';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bcef3bd1883fdc3a8214f645cc30ecaa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Drop location: The 3D point where packages can be dropped to be placed in the container.
    geometry_msgs/Point32 drop_location
    
    # Stacking area: Area where packages can be stacked at the beginning
    geometry_msgs/Point32[2] stacking_area
    
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PackagePool(null);
    if (msg.drop_location !== undefined) {
      resolved.drop_location = geometry_msgs.msg.Point32.Resolve(msg.drop_location)
    }
    else {
      resolved.drop_location = new geometry_msgs.msg.Point32()
    }

    if (msg.stacking_area !== undefined) {
      resolved.stacking_area = new Array(2)
      for (let i = 0; i < resolved.stacking_area.length; ++i) {
        if (msg.stacking_area.length > i) {
          resolved.stacking_area[i] = geometry_msgs.msg.Point32.Resolve(msg.stacking_area[i]);
        }
        else {
          resolved.stacking_area[i] = new geometry_msgs.msg.Point32();
        }
      }
    }
    else {
      resolved.stacking_area = new Array(2).fill(new geometry_msgs.msg.Point32())
    }

    return resolved;
    }
};

module.exports = PackagePool;
