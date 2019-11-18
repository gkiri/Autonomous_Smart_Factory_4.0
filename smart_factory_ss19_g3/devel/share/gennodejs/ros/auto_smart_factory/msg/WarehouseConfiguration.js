// Auto-generated. Do not edit!

// (in-package auto_smart_factory.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Tray = require('./Tray.js');
let Wall = require('./Wall.js');
let TrayGeometry = require('./TrayGeometry.js');
let WallGeometry = require('./WallGeometry.js');
let PackagePool = require('./PackagePool.js');
let Robot = require('./Robot.js');
let IdlePosition = require('./IdlePosition.js');
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class WarehouseConfiguration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.width = null;
      this.height = null;
      this.trays = null;
      this.walls = null;
      this.tray_geometry = null;
      this.wall_geometry = null;
      this.occupancy_map = null;
      this.package_pool = null;
      this.robots = null;
      this.idle_positions = null;
    }
    else {
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('trays')) {
        this.trays = initObj.trays
      }
      else {
        this.trays = [];
      }
      if (initObj.hasOwnProperty('walls')) {
        this.walls = initObj.walls
      }
      else {
        this.walls = [];
      }
      if (initObj.hasOwnProperty('tray_geometry')) {
        this.tray_geometry = initObj.tray_geometry
      }
      else {
        this.tray_geometry = new TrayGeometry();
      }
      if (initObj.hasOwnProperty('wall_geometry')) {
        this.wall_geometry = initObj.wall_geometry
      }
      else {
        this.wall_geometry = new WallGeometry();
      }
      if (initObj.hasOwnProperty('occupancy_map')) {
        this.occupancy_map = initObj.occupancy_map
      }
      else {
        this.occupancy_map = new nav_msgs.msg.OccupancyGrid();
      }
      if (initObj.hasOwnProperty('package_pool')) {
        this.package_pool = initObj.package_pool
      }
      else {
        this.package_pool = new PackagePool();
      }
      if (initObj.hasOwnProperty('robots')) {
        this.robots = initObj.robots
      }
      else {
        this.robots = [];
      }
      if (initObj.hasOwnProperty('idle_positions')) {
        this.idle_positions = initObj.idle_positions
      }
      else {
        this.idle_positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WarehouseConfiguration
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    // Serialize message field [trays]
    // Serialize the length for message field [trays]
    bufferOffset = _serializer.uint32(obj.trays.length, buffer, bufferOffset);
    obj.trays.forEach((val) => {
      bufferOffset = Tray.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [walls]
    // Serialize the length for message field [walls]
    bufferOffset = _serializer.uint32(obj.walls.length, buffer, bufferOffset);
    obj.walls.forEach((val) => {
      bufferOffset = Wall.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [tray_geometry]
    bufferOffset = TrayGeometry.serialize(obj.tray_geometry, buffer, bufferOffset);
    // Serialize message field [wall_geometry]
    bufferOffset = WallGeometry.serialize(obj.wall_geometry, buffer, bufferOffset);
    // Serialize message field [occupancy_map]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.occupancy_map, buffer, bufferOffset);
    // Serialize message field [package_pool]
    bufferOffset = PackagePool.serialize(obj.package_pool, buffer, bufferOffset);
    // Serialize message field [robots]
    // Serialize the length for message field [robots]
    bufferOffset = _serializer.uint32(obj.robots.length, buffer, bufferOffset);
    obj.robots.forEach((val) => {
      bufferOffset = Robot.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [idle_positions]
    // Serialize the length for message field [idle_positions]
    bufferOffset = _serializer.uint32(obj.idle_positions.length, buffer, bufferOffset);
    obj.idle_positions.forEach((val) => {
      bufferOffset = IdlePosition.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WarehouseConfiguration
    let len;
    let data = new WarehouseConfiguration(null);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trays]
    // Deserialize array length for message field [trays]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trays = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trays[i] = Tray.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [walls]
    // Deserialize array length for message field [walls]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.walls = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.walls[i] = Wall.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [tray_geometry]
    data.tray_geometry = TrayGeometry.deserialize(buffer, bufferOffset);
    // Deserialize message field [wall_geometry]
    data.wall_geometry = WallGeometry.deserialize(buffer, bufferOffset);
    // Deserialize message field [occupancy_map]
    data.occupancy_map = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    // Deserialize message field [package_pool]
    data.package_pool = PackagePool.deserialize(buffer, bufferOffset);
    // Deserialize message field [robots]
    // Deserialize array length for message field [robots]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robots = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robots[i] = Robot.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [idle_positions]
    // Deserialize array length for message field [idle_positions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.idle_positions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.idle_positions[i] = IdlePosition.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.trays.forEach((val) => {
      length += Tray.getMessageSize(val);
    });
    length += 12 * object.walls.length;
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.occupancy_map);
    object.robots.forEach((val) => {
      length += Robot.getMessageSize(val);
    });
    object.idle_positions.forEach((val) => {
      length += IdlePosition.getMessageSize(val);
    });
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_smart_factory/WarehouseConfiguration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6b22f5b35a51b0f4e33943dec0ac3f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new WarehouseConfiguration(null);
    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.trays !== undefined) {
      resolved.trays = new Array(msg.trays.length);
      for (let i = 0; i < resolved.trays.length; ++i) {
        resolved.trays[i] = Tray.Resolve(msg.trays[i]);
      }
    }
    else {
      resolved.trays = []
    }

    if (msg.walls !== undefined) {
      resolved.walls = new Array(msg.walls.length);
      for (let i = 0; i < resolved.walls.length; ++i) {
        resolved.walls[i] = Wall.Resolve(msg.walls[i]);
      }
    }
    else {
      resolved.walls = []
    }

    if (msg.tray_geometry !== undefined) {
      resolved.tray_geometry = TrayGeometry.Resolve(msg.tray_geometry)
    }
    else {
      resolved.tray_geometry = new TrayGeometry()
    }

    if (msg.wall_geometry !== undefined) {
      resolved.wall_geometry = WallGeometry.Resolve(msg.wall_geometry)
    }
    else {
      resolved.wall_geometry = new WallGeometry()
    }

    if (msg.occupancy_map !== undefined) {
      resolved.occupancy_map = nav_msgs.msg.OccupancyGrid.Resolve(msg.occupancy_map)
    }
    else {
      resolved.occupancy_map = new nav_msgs.msg.OccupancyGrid()
    }

    if (msg.package_pool !== undefined) {
      resolved.package_pool = PackagePool.Resolve(msg.package_pool)
    }
    else {
      resolved.package_pool = new PackagePool()
    }

    if (msg.robots !== undefined) {
      resolved.robots = new Array(msg.robots.length);
      for (let i = 0; i < resolved.robots.length; ++i) {
        resolved.robots[i] = Robot.Resolve(msg.robots[i]);
      }
    }
    else {
      resolved.robots = []
    }

    if (msg.idle_positions !== undefined) {
      resolved.idle_positions = new Array(msg.idle_positions.length);
      for (let i = 0; i < resolved.idle_positions.length; ++i) {
        resolved.idle_positions[i] = IdlePosition.Resolve(msg.idle_positions[i]);
      }
    }
    else {
      resolved.idle_positions = []
    }

    return resolved;
    }
};

module.exports = WarehouseConfiguration;
