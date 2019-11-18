# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auto_smart_factory/PerformTaskTestRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class PerformTaskTestRequest(genpy.Message):
  _md5sum = "347969e57f21de1f57df3ce7cb965f5c"
  _type = "auto_smart_factory/PerformTaskTestRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 task_id
geometry_msgs/Point start_pos
geometry_msgs/Point end_pos


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['task_id','start_pos','end_pos']
  _slot_types = ['int32','geometry_msgs/Point','geometry_msgs/Point']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       task_id,start_pos,end_pos

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PerformTaskTestRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.task_id is None:
        self.task_id = 0
      if self.start_pos is None:
        self.start_pos = geometry_msgs.msg.Point()
      if self.end_pos is None:
        self.end_pos = geometry_msgs.msg.Point()
    else:
      self.task_id = 0
      self.start_pos = geometry_msgs.msg.Point()
      self.end_pos = geometry_msgs.msg.Point()

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
      buff.write(_get_struct_i6d().pack(_x.task_id, _x.start_pos.x, _x.start_pos.y, _x.start_pos.z, _x.end_pos.x, _x.end_pos.y, _x.end_pos.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.start_pos is None:
        self.start_pos = geometry_msgs.msg.Point()
      if self.end_pos is None:
        self.end_pos = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 52
      (_x.task_id, _x.start_pos.x, _x.start_pos.y, _x.start_pos.z, _x.end_pos.x, _x.end_pos.y, _x.end_pos.z,) = _get_struct_i6d().unpack(str[start:end])
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
      buff.write(_get_struct_i6d().pack(_x.task_id, _x.start_pos.x, _x.start_pos.y, _x.start_pos.z, _x.end_pos.x, _x.end_pos.y, _x.end_pos.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.start_pos is None:
        self.start_pos = geometry_msgs.msg.Point()
      if self.end_pos is None:
        self.end_pos = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 52
      (_x.task_id, _x.start_pos.x, _x.start_pos.y, _x.start_pos.z, _x.end_pos.x, _x.end_pos.y, _x.end_pos.z,) = _get_struct_i6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i6d = None
def _get_struct_i6d():
    global _struct_i6d
    if _struct_i6d is None:
        _struct_i6d = struct.Struct("<i6d")
    return _struct_i6d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auto_smart_factory/PerformTaskTestResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class PerformTaskTestResponse(genpy.Message):
  _md5sum = "358e233cde0c8a8bcfea4ce193f8fc15"
  _type = "auto_smart_factory/PerformTaskTestResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
bool success

"""
  __slots__ = ['success']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       success

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PerformTaskTestResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.success is None:
        self.success = False
    else:
      self.success = False

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
      buff.write(_get_struct_B().pack(self.success))
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
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
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
      buff.write(_get_struct_B().pack(self.success))
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
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class PerformTaskTest(object):
  _type          = 'auto_smart_factory/PerformTaskTest'
  _md5sum = '190d24b4aa92517c4ea4ac2d1df79c43'
  _request_class  = PerformTaskTestRequest
  _response_class = PerformTaskTestResponse