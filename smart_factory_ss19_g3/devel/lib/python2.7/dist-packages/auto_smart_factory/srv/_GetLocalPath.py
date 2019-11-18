# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auto_smart_factory/GetLocalPathRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import auto_smart_factory.msg
import geometry_msgs.msg

class GetLocalPathRequest(genpy.Message):
  _md5sum = "db492bb913446481ce8c861eb7241b44"
  _type = "auto_smart_factory/GetLocalPathRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string agent_id
geometry_msgs/Point[] robots_path
RobotConfiguration robot_config
geometry_msgs/Point next_position
geometry_msgs/Point goal_position
geometry_msgs/Point robot_position


geometry_msgs/Point[] obstacles

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
"""
  __slots__ = ['agent_id','robots_path','robot_config','next_position','goal_position','robot_position','obstacles']
  _slot_types = ['string','geometry_msgs/Point[]','auto_smart_factory/RobotConfiguration','geometry_msgs/Point','geometry_msgs/Point','geometry_msgs/Point','geometry_msgs/Point[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       agent_id,robots_path,robot_config,next_position,goal_position,robot_position,obstacles

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetLocalPathRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.agent_id is None:
        self.agent_id = ''
      if self.robots_path is None:
        self.robots_path = []
      if self.robot_config is None:
        self.robot_config = auto_smart_factory.msg.RobotConfiguration()
      if self.next_position is None:
        self.next_position = geometry_msgs.msg.Point()
      if self.goal_position is None:
        self.goal_position = geometry_msgs.msg.Point()
      if self.robot_position is None:
        self.robot_position = geometry_msgs.msg.Point()
      if self.obstacles is None:
        self.obstacles = []
    else:
      self.agent_id = ''
      self.robots_path = []
      self.robot_config = auto_smart_factory.msg.RobotConfiguration()
      self.next_position = geometry_msgs.msg.Point()
      self.goal_position = geometry_msgs.msg.Point()
      self.robot_position = geometry_msgs.msg.Point()
      self.obstacles = []

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
      _x = self.agent_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.robots_path)
      buff.write(_struct_I.pack(length))
      for val1 in self.robots_path:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self.robot_config.type_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7f9d().pack(_x.robot_config.charging_rate, _x.robot_config.discharging_rate, _x.robot_config.min_linear_vel, _x.robot_config.max_linear_vel, _x.robot_config.max_angular_vel, _x.robot_config.radius, _x.robot_config.max_load, _x.next_position.x, _x.next_position.y, _x.next_position.z, _x.goal_position.x, _x.goal_position.y, _x.goal_position.z, _x.robot_position.x, _x.robot_position.y, _x.robot_position.z))
      length = len(self.obstacles)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacles:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.robots_path is None:
        self.robots_path = None
      if self.robot_config is None:
        self.robot_config = auto_smart_factory.msg.RobotConfiguration()
      if self.next_position is None:
        self.next_position = geometry_msgs.msg.Point()
      if self.goal_position is None:
        self.goal_position = geometry_msgs.msg.Point()
      if self.robot_position is None:
        self.robot_position = geometry_msgs.msg.Point()
      if self.obstacles is None:
        self.obstacles = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agent_id = str[start:end].decode('utf-8')
      else:
        self.agent_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.robots_path = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.robots_path.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robot_config.type_name = str[start:end].decode('utf-8')
      else:
        self.robot_config.type_name = str[start:end]
      _x = self
      start = end
      end += 100
      (_x.robot_config.charging_rate, _x.robot_config.discharging_rate, _x.robot_config.min_linear_vel, _x.robot_config.max_linear_vel, _x.robot_config.max_angular_vel, _x.robot_config.radius, _x.robot_config.max_load, _x.next_position.x, _x.next_position.y, _x.next_position.z, _x.goal_position.x, _x.goal_position.y, _x.goal_position.z, _x.robot_position.x, _x.robot_position.y, _x.robot_position.z,) = _get_struct_7f9d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacles = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.obstacles.append(val1)
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
      _x = self.agent_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.robots_path)
      buff.write(_struct_I.pack(length))
      for val1 in self.robots_path:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self.robot_config.type_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7f9d().pack(_x.robot_config.charging_rate, _x.robot_config.discharging_rate, _x.robot_config.min_linear_vel, _x.robot_config.max_linear_vel, _x.robot_config.max_angular_vel, _x.robot_config.radius, _x.robot_config.max_load, _x.next_position.x, _x.next_position.y, _x.next_position.z, _x.goal_position.x, _x.goal_position.y, _x.goal_position.z, _x.robot_position.x, _x.robot_position.y, _x.robot_position.z))
      length = len(self.obstacles)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacles:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.robots_path is None:
        self.robots_path = None
      if self.robot_config is None:
        self.robot_config = auto_smart_factory.msg.RobotConfiguration()
      if self.next_position is None:
        self.next_position = geometry_msgs.msg.Point()
      if self.goal_position is None:
        self.goal_position = geometry_msgs.msg.Point()
      if self.robot_position is None:
        self.robot_position = geometry_msgs.msg.Point()
      if self.obstacles is None:
        self.obstacles = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agent_id = str[start:end].decode('utf-8')
      else:
        self.agent_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.robots_path = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.robots_path.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robot_config.type_name = str[start:end].decode('utf-8')
      else:
        self.robot_config.type_name = str[start:end]
      _x = self
      start = end
      end += 100
      (_x.robot_config.charging_rate, _x.robot_config.discharging_rate, _x.robot_config.min_linear_vel, _x.robot_config.max_linear_vel, _x.robot_config.max_angular_vel, _x.robot_config.radius, _x.robot_config.max_load, _x.next_position.x, _x.next_position.y, _x.next_position.z, _x.goal_position.x, _x.goal_position.y, _x.goal_position.z, _x.robot_position.x, _x.robot_position.y, _x.robot_position.z,) = _get_struct_7f9d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacles = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.obstacles.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7f9d = None
def _get_struct_7f9d():
    global _struct_7f9d
    if _struct_7f9d is None:
        _struct_7f9d = struct.Struct("<7f9d")
    return _struct_7f9d
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auto_smart_factory/GetLocalPathResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class GetLocalPathResponse(genpy.Message):
  _md5sum = "05f2a111bf2586d56e616a7872fdb2c3"
  _type = "auto_smart_factory/GetLocalPathResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Point[] path
float64 length


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['path','length']
  _slot_types = ['geometry_msgs/Point[]','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       path,length

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetLocalPathResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.path is None:
        self.path = []
      if self.length is None:
        self.length = 0.
    else:
      self.path = []
      self.length = 0.

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
      length = len(self.path)
      buff.write(_struct_I.pack(length))
      for val1 in self.path:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      buff.write(_get_struct_d().pack(self.length))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.path is None:
        self.path = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.path = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.path.append(val1)
      start = end
      end += 8
      (self.length,) = _get_struct_d().unpack(str[start:end])
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
      length = len(self.path)
      buff.write(_struct_I.pack(length))
      for val1 in self.path:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      buff.write(_get_struct_d().pack(self.length))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.path is None:
        self.path = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.path = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.path.append(val1)
      start = end
      end += 8
      (self.length,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
class GetLocalPath(object):
  _type          = 'auto_smart_factory/GetLocalPath'
  _md5sum = '24de2ce6824365cb99b622cce140382d'
  _request_class  = GetLocalPathRequest
  _response_class = GetLocalPathResponse