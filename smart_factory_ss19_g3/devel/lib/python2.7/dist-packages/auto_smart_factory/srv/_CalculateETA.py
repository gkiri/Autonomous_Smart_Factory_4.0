# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auto_smart_factory/CalculateETARequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class CalculateETARequest(genpy.Message):
  _md5sum = "18fcc284121793b203f27864cb4d7291"
  _type = "auto_smart_factory/CalculateETARequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Point posStart
geometry_msgs/Point posEnd
string robotId


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['posStart','posEnd','robotId']
  _slot_types = ['geometry_msgs/Point','geometry_msgs/Point','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       posStart,posEnd,robotId

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CalculateETARequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.posStart is None:
        self.posStart = geometry_msgs.msg.Point()
      if self.posEnd is None:
        self.posEnd = geometry_msgs.msg.Point()
      if self.robotId is None:
        self.robotId = ''
    else:
      self.posStart = geometry_msgs.msg.Point()
      self.posEnd = geometry_msgs.msg.Point()
      self.robotId = ''

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
      buff.write(_get_struct_6d().pack(_x.posStart.x, _x.posStart.y, _x.posStart.z, _x.posEnd.x, _x.posEnd.y, _x.posEnd.z))
      _x = self.robotId
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.posStart is None:
        self.posStart = geometry_msgs.msg.Point()
      if self.posEnd is None:
        self.posEnd = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.posStart.x, _x.posStart.y, _x.posStart.z, _x.posEnd.x, _x.posEnd.y, _x.posEnd.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robotId = str[start:end].decode('utf-8')
      else:
        self.robotId = str[start:end]
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
      buff.write(_get_struct_6d().pack(_x.posStart.x, _x.posStart.y, _x.posStart.z, _x.posEnd.x, _x.posEnd.y, _x.posEnd.z))
      _x = self.robotId
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.posStart is None:
        self.posStart = geometry_msgs.msg.Point()
      if self.posEnd is None:
        self.posEnd = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.posStart.x, _x.posStart.y, _x.posStart.z, _x.posEnd.x, _x.posEnd.y, _x.posEnd.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robotId = str[start:end].decode('utf-8')
      else:
        self.robotId = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auto_smart_factory/CalculateETAResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CalculateETAResponse(genpy.Message):
  _md5sum = "d7d52bd4353b5c2f2f472394f2f5e3e5"
  _type = "auto_smart_factory/CalculateETAResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
float32 resultETA

"""
  __slots__ = ['resultETA']
  _slot_types = ['float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       resultETA

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CalculateETAResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.resultETA is None:
        self.resultETA = 0.
    else:
      self.resultETA = 0.

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
      buff.write(_get_struct_f().pack(self.resultETA))
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
      (self.resultETA,) = _get_struct_f().unpack(str[start:end])
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
      buff.write(_get_struct_f().pack(self.resultETA))
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
      (self.resultETA,) = _get_struct_f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
class CalculateETA(object):
  _type          = 'auto_smart_factory/CalculateETA'
  _md5sum = '192e38bd534846aab00c4eb9ae76cdf0'
  _request_class  = CalculateETARequest
  _response_class = CalculateETAResponse