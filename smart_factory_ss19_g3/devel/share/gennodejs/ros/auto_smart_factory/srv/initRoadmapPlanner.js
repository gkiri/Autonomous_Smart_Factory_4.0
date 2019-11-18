// Auto-generated. Do not edit!

// (in-package auto_smart_factory.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WarehouseConfiguration = require('../msg/WarehouseConfiguration.js');
let RobotConfiguration = require('../msg/RobotConfiguration.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class initRoadmapPlannerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.warehouse_configuration = null;
      this.robot_configurations = null;
    }
    else {
      if (initObj.hasOwnProperty('warehouse_configuration')) {
        this.warehouse_configuration = initObj.warehouse_configuration
      }
      else {
        this.warehouse_configuration = new WarehouseConfiguration();
      }
      if (initObj.hasOwnProperty('robot_configurations')) {
        this.robot_configurations = initObj.robot_configurations
      }
      else {
        this.robot_configurations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type initRoadmapPlannerRequest
    // Serialize message field [warehouse_configuration]
    bufferOffset = WarehouseConfiguration.serialize(obj.warehouse_configuration, buffer, bufferOffset);
    // Serialize message field [robot_configurations]
    // Serialize the length for message field [robot_configurations]
    bufferOffset = _serializer.uint32(obj.robot_configurations.length, buffer, bufferOffset);
    obj.robot_configurations.forEach((val) => {
      bufferOffset = RobotConfiguration.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type initRoadmapPlannerRequest
    let len;
    let data = new initRoadmapPlannerRequest(null);
    // Deserialize message field [warehouse_configuration]
    data.warehouse_configuration = WarehouseConfiguration.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_configurations]
    // Deserialize array length for message field [robot_configurations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robot_configurations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robot_configurations[i] = RobotConfiguration.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WarehouseConfiguration.getMessageSize(object.warehouse_configuration);
    object.robot_configurations.forEach((val) => {
      length += RobotConfiguration.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/initRoadmapPlannerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48397e7909f36c5df549cc4d00864dc2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    WarehouseConfiguration warehouse_configuration
    RobotConfiguration[] robot_configurations
    
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
    
    ================================================================================
    MSG: auto_smart_factory/RobotConfiguration
    # name of this robot type
    string type_name
    
    # charging rate of the battery
    float32 charging_rate
    
    # discharging rate of the battery
    float32 discharging_rate
    
    # minimum linear velocity in [m/s]
    float32 min_linear_vel
    
    # maximum linear velocity in [m/s]
    float32 max_linear_vel
    
    # maximum angular velocity in [rad/s]
    float32 max_angular_vel
    
    # maximum radius of the robot
    float32 radius
    
    # maximum package weight in [kg]
    float32 max_load
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new initRoadmapPlannerRequest(null);
    if (msg.warehouse_configuration !== undefined) {
      resolved.warehouse_configuration = WarehouseConfiguration.Resolve(msg.warehouse_configuration)
    }
    else {
      resolved.warehouse_configuration = new WarehouseConfiguration()
    }

    if (msg.robot_configurations !== undefined) {
      resolved.robot_configurations = new Array(msg.robot_configurations.length);
      for (let i = 0; i < resolved.robot_configurations.length; ++i) {
        resolved.robot_configurations[i] = RobotConfiguration.Resolve(msg.robot_configurations[i]);
      }
    }
    else {
      resolved.robot_configurations = []
    }

    return resolved;
    }
};

class initRoadmapPlannerResponse {
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
    // Serializes a message object of type initRoadmapPlannerResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type initRoadmapPlannerResponse
    let len;
    let data = new initRoadmapPlannerResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_smart_factory/initRoadmapPlannerResponse';
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
    const resolved = new initRoadmapPlannerResponse(null);
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
  Request: initRoadmapPlannerRequest,
  Response: initRoadmapPlannerResponse,
  md5sum() { return 'fb9bffdfe2f4f2d0cadce15bb8c12ec2'; },
  datatype() { return 'auto_smart_factory/initRoadmapPlanner'; }
};
