# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auto_smart_factory/RobotHeartbeat.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class RobotHeartbeat(genpy.Message):
  _md5sum = "ba85488467034734d06763799c12f823"
  _type = "auto_smart_factory/RobotHeartbeat"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# robot id
string id

# is the robot idle?
bool idle

# robot position
geometry_msgs/Point position

# robot orientation
float32 orientation

# battery state of robot 0 - 100
float32 battery_level

# eta for a robot
float32 eta

# is it carring a package?
bool with_package

# package queue size
uint8 queue_length

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['id','idle','position','orientation','battery_level','eta','with_package','queue_length']
  _slot_types = ['string','bool','geometry_msgs/Point','float32','float32','float32','bool','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,idle,position,orientation,battery_level,eta,with_package,queue_length

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotHeartbeat, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = ''
      if self.idle is None:
        self.idle = False
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      if self.orientation is None:
        self.orientation = 0.
      if self.battery_level is None:
        self.battery_level = 0.
      if self.eta is None:
        self.eta = 0.
      if self.with_package is None:
        self.with_package = False
      if self.queue_length is None:
        self.queue_length = 0
    else:
      self.id = ''
      self.idle = False
      self.position = geometry_msgs.msg.Point()
      self.orientation = 0.
      self.battery_level = 0.
      self.eta = 0.
      self.with_package = False
      self.queue_length = 0

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
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B3d3f2B().pack(_x.idle, _x.position.x, _x.position.y, _x.position.z, _x.orientation, _x.battery_level, _x.eta, _x.with_package, _x.queue_length))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8')
      else:
        self.id = str[start:end]
      _x = self
      start = end
      end += 39
      (_x.idle, _x.position.x, _x.position.y, _x.position.z, _x.orientation, _x.battery_level, _x.eta, _x.with_package, _x.queue_length,) = _get_struct_B3d3f2B().unpack(str[start:end])
      self.idle = bool(self.idle)
      self.with_package = bool(self.with_package)
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
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B3d3f2B().pack(_x.idle, _x.position.x, _x.position.y, _x.position.z, _x.orientation, _x.battery_level, _x.eta, _x.with_package, _x.queue_length))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8')
      else:
        self.id = str[start:end]
      _x = self
      start = end
      end += 39
      (_x.idle, _x.position.x, _x.position.y, _x.position.z, _x.orientation, _x.battery_level, _x.eta, _x.with_package, _x.queue_length,) = _get_struct_B3d3f2B().unpack(str[start:end])
      self.idle = bool(self.idle)
      self.with_package = bool(self.with_package)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B3d3f2B = None
def _get_struct_B3d3f2B():
    global _struct_B3d3f2B
    if _struct_B3d3f2B is None:
        _struct_B3d3f2B = struct.Struct("<B3d3f2B")
    return _struct_B3d3f2B
