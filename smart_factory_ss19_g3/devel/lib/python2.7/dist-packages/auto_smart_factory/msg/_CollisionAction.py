# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auto_smart_factory/CollisionAction.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CollisionAction(genpy.Message):
  _md5sum = "7d85d6f3795d2f6173839c2dc98263c5"
  _type = "auto_smart_factory/CollisionAction"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# publishes robot ID
# publishes if robot needs to halt completely or only stops moving until a strategy found
# specifies duration of halt

string RobotId
bool halt
float32 time_to_halt"""
  __slots__ = ['RobotId','halt','time_to_halt']
  _slot_types = ['string','bool','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       RobotId,halt,time_to_halt

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CollisionAction, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.RobotId is None:
        self.RobotId = ''
      if self.halt is None:
        self.halt = False
      if self.time_to_halt is None:
        self.time_to_halt = 0.
    else:
      self.RobotId = ''
      self.halt = False
      self.time_to_halt = 0.

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
      _x = self.RobotId
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_Bf().pack(_x.halt, _x.time_to_halt))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.RobotId = str[start:end].decode('utf-8')
      else:
        self.RobotId = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.halt, _x.time_to_halt,) = _get_struct_Bf().unpack(str[start:end])
      self.halt = bool(self.halt)
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
      _x = self.RobotId
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_Bf().pack(_x.halt, _x.time_to_halt))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.RobotId = str[start:end].decode('utf-8')
      else:
        self.RobotId = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.halt, _x.time_to_halt,) = _get_struct_Bf().unpack(str[start:end])
      self.halt = bool(self.halt)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_Bf = None
def _get_struct_Bf():
    global _struct_Bf
    if _struct_Bf is None:
        _struct_Bf = struct.Struct("<Bf")
    return _struct_Bf
