# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auto_smart_factory/Tray.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Tray(genpy.Message):
  _md5sum = "4ebddf5eeb28c15170ac6457775fa846"
  _type = "auto_smart_factory/Tray"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# The representation of a warehouse tray

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
"""
  __slots__ = ['id','type','x','y','orientation','max_load','package_type']
  _slot_types = ['uint32','string','float32','float32','float32','float32','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,type,x,y,orientation,max_load,package_type

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Tray, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.type is None:
        self.type = ''
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.orientation is None:
        self.orientation = 0.
      if self.max_load is None:
        self.max_load = 0.
      if self.package_type is None:
        self.package_type = 0
    else:
      self.id = 0
      self.type = ''
      self.x = 0.
      self.y = 0.
      self.orientation = 0.
      self.max_load = 0.
      self.package_type = 0

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
      buff.write(_get_struct_I().pack(self.id))
      _x = self.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4fI().pack(_x.x, _x.y, _x.orientation, _x.max_load, _x.package_type))
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
      (self.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.type = str[start:end].decode('utf-8')
      else:
        self.type = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.x, _x.y, _x.orientation, _x.max_load, _x.package_type,) = _get_struct_4fI().unpack(str[start:end])
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
      buff.write(_get_struct_I().pack(self.id))
      _x = self.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4fI().pack(_x.x, _x.y, _x.orientation, _x.max_load, _x.package_type))
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
      (self.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.type = str[start:end].decode('utf-8')
      else:
        self.type = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.x, _x.y, _x.orientation, _x.max_load, _x.package_type,) = _get_struct_4fI().unpack(str[start:end])
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