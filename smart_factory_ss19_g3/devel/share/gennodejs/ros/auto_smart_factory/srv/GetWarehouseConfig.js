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

let WarehouseConfiguration = require('../msg/WarehouseConfiguration.js');

//-----------------------------------------------------------

class GetWarehouseConfigRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWarehouseConfigRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWarehouseConfigRequest
    let len;
    let data = new GetWarehouseConfigRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetWarehouseConfigRequest';
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
    const resolved = new GetWarehouseConfigRequest(null);
    return resolved;
    }
};

class GetWarehouseConfigResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.warehouse_configuration = null;
    }
    else {
      if (initObj.hasOwnProperty('warehouse_configuration')) {
        this.warehouse_configuration = initObj.warehouse_configuration
      }
      else {
        this.warehouse_configuration = new WarehouseConfiguration();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWarehouseConfigResponse
    // Serialize message field [warehouse_configuration]
    bufferOffset = WarehouseConfiguration.serialize(obj.warehouse_configuration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWarehouseConfigResponse
    let len;
    let data = new GetWarehouseConfigResponse(null);
    // Deserialize message field [warehouse_configuration]
    data.warehouse_configuration = WarehouseConfiguration.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WarehouseConfiguration.getMessageSize(object.warehouse_configuration);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/GetWarehouseConfigResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf9e28ae61752bbb3424c5bfc632987f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    WarehouseConfiguration warehouse_configuration
    
    
    ================================================================================
    MSG: auto_smart_factory/WarehouseConfiguration
    # dimensions of the map in meters
    float32 width
    float32 height
    
    # Info about the trays
    Tray[] trays
    
    # Info about the walls
    Wall[] walls
    
    # Info about the tray geometry
    TrayGeometry tray_geometry
    
    # Info about the wall geometry
    WallGeometry wall_geometry
    
    # The occupancy map of the warehouse
    nav_msgs/OccupancyGrid occupancy_map
    
    # The package pool
    PackagePool package_pool
    
    # Robots in this warehouse
    Robot[] robots
    
    # Idle positions of the robots
    IdlePosition[] idle_positions
    
    
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
    MSG: auto_smart_factory/Wall
    # The representation of a warehouse wall
    
    # the coordinates of the center of the wall in the '/map' frame
    float32 x
    float32 y
    
    # the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.
    float32 orientation
    
    
    
    ================================================================================
    MSG: auto_smart_factory/TrayGeometry
    # Info about the tray geometry
    float32 width
    float32 height
    
    
    ================================================================================
    MSG: auto_smart_factory/WallGeometry
    # Info about the wall geometry
    float32 width
    float32 height
    
    
    ================================================================================
    MSG: nav_msgs/OccupancyGrid
    # This represents a 2-D grid map, in which each cell represents the probability of
    # occupancy.
    
    Header header 
    
    #MetaData for the map
    MapMetaData info
    
    # The map data, in row-major order, starting with (0,0).  Occupancy
    # probabilities are in the range [0,100].  Unknown is -1.
    int8[] data
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: auto_smart_factory/PackagePool
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
    ================================================================================
    MSG: auto_smart_factory/Robot
    # id of this robot
    string id
    
    # type name of this robot
    string type
    
    
    ================================================================================
    MSG: auto_smart_factory/IdlePosition
    # unique robot id/name
    string id
    
    # idle pose, yaw angle in degree
    geometry_msgs/Pose2D pose
    
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWarehouseConfigResponse(null);
    if (msg.warehouse_configuration !== undefined) {
      resolved.warehouse_configuration = WarehouseConfiguration.Resolve(msg.warehouse_configuration)
    }
    else {
      resolved.warehouse_configuration = new WarehouseConfiguration()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetWarehouseConfigRequest,
  Response: GetWarehouseConfigResponse,
  md5sum() { return 'bf9e28ae61752bbb3424c5bfc632987f'; },
  datatype() { return 'auto_smart_factory/GetWarehouseConfig'; }
};
