# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auto_smart_factory/GetWarehouseConfigRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetWarehouseConfigRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "auto_smart_factory/GetWarehouseConfigRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetWarehouseConfigRequest, self).__init__(*args, **kwds)

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auto_smart_factory/GetWarehouseConfigResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import auto_smart_factory.msg
import nav_msgs.msg
import genpy
import std_msgs.msg

class GetWarehouseConfigResponse(genpy.Message):
  _md5sum = "bf9e28ae61752bbb3424c5bfc632987f"
  _type = "auto_smart_factory/GetWarehouseConfigResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """WarehouseConfiguration warehouse_configuration


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
"""
  __slots__ = ['warehouse_configuration']
  _slot_types = ['auto_smart_factory/WarehouseConfiguration']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       warehouse_configuration

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetWarehouseConfigResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.warehouse_configuration is None:
        self.warehouse_configuration = auto_smart_factory.msg.WarehouseConfiguration()
    else:
      self.warehouse_configuration = auto_smart_factory.msg.WarehouseConfiguration()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2f().pack(_x.warehouse_configuration.width, _x.warehouse_configuration.height))
      length = len(self.warehouse_configuration.trays)
      buff.write(_struct_I.pack(length))
      for val1 in self.warehouse_configuration.trays:
        buff.write(_get_struct_I().pack(val1.id))
        _x = val1.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_4fI().pack(_x.x, _x.y, _x.orientation, _x.max_load, _x.package_type))
      length = len(self.warehouse_configuration.walls)
      buff.write(_struct_I.pack(length))
      for val1 in self.warehouse_configuration.walls:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.orientation))
      _x = self
      buff.write(_get_struct_4f3I().pack(_x.warehouse_configuration.tray_geometry.width, _x.warehouse_configuration.tray_geometry.height, _x.warehouse_configuration.wall_geometry.width, _x.warehouse_configuration.wall_geometry.height, _x.warehouse_configuration.occupancy_map.header.seq, _x.warehouse_configuration.occupancy_map.header.stamp.secs, _x.warehouse_configuration.occupancy_map.header.stamp.nsecs))
      _x = self.warehouse_configuration.occupancy_map.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2If2I7d().pack(_x.warehouse_configuration.occupancy_map.info.map_load_time.secs, _x.warehouse_configuration.occupancy_map.info.map_load_time.nsecs, _x.warehouse_configuration.occupancy_map.info.resolution, _x.warehouse_configuration.occupancy_map.info.width, _x.warehouse_configuration.occupancy_map.info.height, _x.warehouse_configuration.occupancy_map.info.origin.position.x, _x.warehouse_configuration.occupancy_map.info.origin.position.y, _x.warehouse_configuration.occupancy_map.info.origin.position.z, _x.warehouse_configuration.occupancy_map.info.origin.orientation.x, _x.warehouse_configuration.occupancy_map.info.origin.orientation.y, _x.warehouse_configuration.occupancy_map.info.origin.orientation.z, _x.warehouse_configuration.occupancy_map.info.origin.orientation.w))
      length = len(self.warehouse_configuration.occupancy_map.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(struct.pack(pattern, *self.warehouse_configuration.occupancy_map.data))
      _x = self
      buff.write(_get_struct_3f().pack(_x.warehouse_configuration.package_pool.drop_location.x, _x.warehouse_configuration.package_pool.drop_location.y, _x.warehouse_configuration.package_pool.drop_location.z))
      for val1 in self.warehouse_configuration.package_pool.stacking_area:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      length = len(self.warehouse_configuration.robots)
      buff.write(_struct_I.pack(length))
      for val1 in self.warehouse_configuration.robots:
        _x = val1.id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.warehouse_configuration.idle_positions)
      buff.write(_struct_I.pack(length))
      for val1 in self.warehouse_configuration.idle_positions:
        _x = val1.id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v1 = val1.pose
        _x = _v1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.warehouse_configuration is None:
        self.warehouse_configuration = auto_smart_factory.msg.WarehouseConfiguration()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.warehouse_configuration.width, _x.warehouse_configuration.height,) = _get_struct_2f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.warehouse_configuration.trays = []
      for i in range(0, length):
        val1 = auto_smart_factory.msg.Tray()
        start = end
        end += 4
        (val1.id,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.type = str[start:end].decode('utf-8')
        else:
          val1.type = str[start:end]
        _x = val1
        start = end
        end += 20
        (_x.x, _x.y, _x.orientation, _x.max_load, _x.package_type,) = _get_struct_4fI().unpack(str[start:end])
        self.warehouse_configuration.trays.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.warehouse_configuration.walls = []
      for i in range(0, length):
        val1 = auto_smart_factory.msg.Wall()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.orientation,) = _get_struct_3f().unpack(str[start:end])
        self.warehouse_configuration.walls.append(val1)
      _x = self
      start = end
      end += 28
      (_x.warehouse_configuration.tray_geometry.width, _x.warehouse_configuration.tray_geometry.height, _x.warehouse_configuration.wall_geometry.width, _x.warehouse_configuration.wall_geometry.height, _x.warehouse_configuration.occupancy_map.header.seq, _x.warehouse_configuration.occupancy_map.header.stamp.secs, _x.warehouse_configuration.occupancy_map.header.stamp.nsecs,) = _get_struct_4f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.warehouse_configuration.occupancy_map.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.warehouse_configuration.occupancy_map.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 76
      (_x.warehouse_configuration.occupancy_map.info.map_load_time.secs, _x.warehouse_configuration.occupancy_map.info.map_load_time.nsecs, _x.warehouse_configuration.occupancy_map.info.resolution, _x.warehouse_configuration.occupancy_map.info.width, _x.warehouse_configuration.occupancy_map.info.height, _x.warehouse_configuration.occupancy_map.info.origin.position.x, _x.warehouse_configuration.occupancy_map.info.origin.position.y, _x.warehouse_configuration.occupancy_map.info.origin.position.z, _x.warehouse_configuration.occupancy_map.info.origin.orientation.x, _x.warehouse_configuration.occupancy_map.info.origin.orientation.y, _x.warehouse_configuration.occupancy_map.info.origin.orientation.z, _x.warehouse_configuration.occupancy_map.info.origin.orientation.w,) = _get_struct_2If2I7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      end += struct.calcsize(pattern)
      self.warehouse_configuration.occupancy_map.data = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 12
      (_x.warehouse_configuration.package_pool.drop_location.x, _x.warehouse_configuration.package_pool.drop_location.y, _x.warehouse_configuration.package_pool.drop_location.z,) = _get_struct_3f().unpack(str[start:end])
      self.warehouse_configuration.package_pool.stacking_area = []
      for i in range(0, 2):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.warehouse_configuration.package_pool.stacking_area.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.warehouse_configuration.robots = []
      for i in range(0, length):
        val1 = auto_smart_factory.msg.Robot()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.id = str[start:end].decode('utf-8')
        else:
          val1.id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.type = str[start:end].decode('utf-8')
        else:
          val1.type = str[start:end]
        self.warehouse_configuration.robots.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.warehouse_configuration.idle_positions = []
      for i in range(0, length):
        val1 = auto_smart_factory.msg.IdlePosition()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.id = str[start:end].decode('utf-8')
        else:
          val1.id = str[start:end]
        _v2 = val1.pose
        _x = _v2
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        self.warehouse_configuration.idle_positions.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2f().pack(_x.warehouse_configuration.width, _x.warehouse_configuration.height))
      length = len(self.warehouse_configuration.trays)
      buff.write(_struct_I.pack(length))
      for val1 in self.warehouse_configuration.trays:
        buff.write(_get_struct_I().pack(val1.id))
        _x = val1.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_4fI().pack(_x.x, _x.y, _x.orientation, _x.max_load, _x.package_type))
      length = len(self.warehouse_configuration.walls)
      buff.write(_struct_I.pack(length))
      for val1 in self.warehouse_configuration.walls:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.orientation))
      _x = self
      buff.write(_get_struct_4f3I().pack(_x.warehouse_configuration.tray_geometry.width, _x.warehouse_configuration.tray_geometry.height, _x.warehouse_configuration.wall_geometry.width, _x.warehouse_configuration.wall_geometry.height, _x.warehouse_configuration.occupancy_map.header.seq, _x.warehouse_configuration.occupancy_map.header.stamp.secs, _x.warehouse_configuration.occupancy_map.header.stamp.nsecs))
      _x = self.warehouse_configuration.occupancy_map.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2If2I7d().pack(_x.warehouse_configuration.occupancy_map.info.map_load_time.secs, _x.warehouse_configuration.occupancy_map.info.map_load_time.nsecs, _x.warehouse_configuration.occupancy_map.info.resolution, _x.warehouse_configuration.occupancy_map.info.width, _x.warehouse_configuration.occupancy_map.info.height, _x.warehouse_configuration.occupancy_map.info.origin.position.x, _x.warehouse_configuration.occupancy_map.info.origin.position.y, _x.warehouse_configuration.occupancy_map.info.origin.position.z, _x.warehouse_configuration.occupancy_map.info.origin.orientation.x, _x.warehouse_configuration.occupancy_map.info.origin.orientation.y, _x.warehouse_configuration.occupancy_map.info.origin.orientation.z, _x.warehouse_configuration.occupancy_map.info.origin.orientation.w))
      length = len(self.warehouse_configuration.occupancy_map.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(self.warehouse_configuration.occupancy_map.data.tostring())
      _x = self
      buff.write(_get_struct_3f().pack(_x.warehouse_configuration.package_pool.drop_location.x, _x.warehouse_configuration.package_pool.drop_location.y, _x.warehouse_configuration.package_pool.drop_location.z))
      for val1 in self.warehouse_configuration.package_pool.stacking_area:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      length = len(self.warehouse_configuration.robots)
      buff.write(_struct_I.pack(length))
      for val1 in self.warehouse_configuration.robots:
        _x = val1.id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.warehouse_configuration.idle_positions)
      buff.write(_struct_I.pack(length))
      for val1 in self.warehouse_configuration.idle_positions:
        _x = val1.id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v3 = val1.pose
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.warehouse_configuration is None:
        self.warehouse_configuration = auto_smart_factory.msg.WarehouseConfiguration()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.warehouse_configuration.width, _x.warehouse_configuration.height,) = _get_struct_2f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.warehouse_configuration.trays = []
      for i in range(0, length):
        val1 = auto_smart_factory.msg.Tray()
        start = end
        end += 4
        (val1.id,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.type = str[start:end].decode('utf-8')
        else:
          val1.type = str[start:end]
        _x = val1
        start = end
        end += 20
        (_x.x, _x.y, _x.orientation, _x.max_load, _x.package_type,) = _get_struct_4fI().unpack(str[start:end])
        self.warehouse_configuration.trays.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.warehouse_configuration.walls = []
      for i in range(0, length):
        val1 = auto_smart_factory.msg.Wall()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.orientation,) = _get_struct_3f().unpack(str[start:end])
        self.warehouse_configuration.walls.append(val1)
      _x = self
      start = end
      end += 28
      (_x.warehouse_configuration.tray_geometry.width, _x.warehouse_configuration.tray_geometry.height, _x.warehouse_configuration.wall_geometry.width, _x.warehouse_configuration.wall_geometry.height, _x.warehouse_configuration.occupancy_map.header.seq, _x.warehouse_configuration.occupancy_map.header.stamp.secs, _x.warehouse_configuration.occupancy_map.header.stamp.nsecs,) = _get_struct_4f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.warehouse_configuration.occupancy_map.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.warehouse_configuration.occupancy_map.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 76
      (_x.warehouse_configuration.occupancy_map.info.map_load_time.secs, _x.warehouse_configuration.occupancy_map.info.map_load_time.nsecs, _x.warehouse_configuration.occupancy_map.info.resolution, _x.warehouse_configuration.occupancy_map.info.width, _x.warehouse_configuration.occupancy_map.info.height, _x.warehouse_configuration.occupancy_map.info.origin.position.x, _x.warehouse_configuration.occupancy_map.info.origin.position.y, _x.warehouse_configuration.occupancy_map.info.origin.position.z, _x.warehouse_configuration.occupancy_map.info.origin.orientation.x, _x.warehouse_configuration.occupancy_map.info.origin.orientation.y, _x.warehouse_configuration.occupancy_map.info.origin.orientation.z, _x.warehouse_configuration.occupancy_map.info.origin.orientation.w,) = _get_struct_2If2I7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      end += struct.calcsize(pattern)
      self.warehouse_configuration.occupancy_map.data = numpy.frombuffer(str[start:end], dtype=numpy.int8, count=length)
      _x = self
      start = end
      end += 12
      (_x.warehouse_configuration.package_pool.drop_location.x, _x.warehouse_configuration.package_pool.drop_location.y, _x.warehouse_configuration.package_pool.drop_location.z,) = _get_struct_3f().unpack(str[start:end])
      self.warehouse_configuration.package_pool.stacking_area = []
      for i in range(0, 2):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.warehouse_configuration.package_pool.stacking_area.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.warehouse_configuration.robots = []
      for i in range(0, length):
        val1 = auto_smart_factory.msg.Robot()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.id = str[start:end].decode('utf-8')
        else:
          val1.id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.type = str[start:end].decode('utf-8')
        else:
          val1.type = str[start:end]
        self.warehouse_configuration.robots.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.warehouse_configuration.idle_positions = []
      for i in range(0, length):
        val1 = auto_smart_factory.msg.IdlePosition()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.id = str[start:end].decode('utf-8')
        else:
          val1.id = str[start:end]
        _v4 = val1.pose
        _x = _v4
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        self.warehouse_configuration.idle_positions.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4fI = None
def _get_struct_4fI():
    global _struct_4fI
    if _struct_4fI is None:
        _struct_4fI = struct.Struct("<4fI")
    return _struct_4fI
_struct_2If2I7d = None
def _get_struct_2If2I7d():
    global _struct_2If2I7d
    if _struct_2If2I7d is None:
        _struct_2If2I7d = struct.Struct("<2If2I7d")
    return _struct_2If2I7d
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
_struct_4f3I = None
def _get_struct_4f3I():
    global _struct_4f3I
    if _struct_4f3I is None:
        _struct_4f3I = struct.Struct("<4f3I")
    return _struct_4f3I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
class GetWarehouseConfig(object):
  _type          = 'auto_smart_factory/GetWarehouseConfig'
  _md5sum = 'bf9e28ae61752bbb3424c5bfc632987f'
  _request_class  = GetWarehouseConfigRequest
  _response_class = GetWarehouseConfigResponse
