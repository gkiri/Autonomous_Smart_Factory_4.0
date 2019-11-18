// Generated by gencpp from file auto_smart_factory/AssignChargingTaskRequest.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_ASSIGNCHARGINGTASKREQUEST_H
#define AUTO_SMART_FACTORY_MESSAGE_ASSIGNCHARGINGTASKREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace auto_smart_factory
{
template <class ContainerAllocator>
struct AssignChargingTaskRequest_
{
  typedef AssignChargingTaskRequest_<ContainerAllocator> Type;

  AssignChargingTaskRequest_()
    : tray_id(0)
    , end(false)  {
    }
  AssignChargingTaskRequest_(const ContainerAllocator& _alloc)
    : tray_id(0)
    , end(false)  {
  (void)_alloc;
    }



   typedef uint32_t _tray_id_type;
  _tray_id_type tray_id;

   typedef uint8_t _end_type;
  _end_type end;





  typedef boost::shared_ptr< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AssignChargingTaskRequest_

typedef ::auto_smart_factory::AssignChargingTaskRequest_<std::allocator<void> > AssignChargingTaskRequest;

typedef boost::shared_ptr< ::auto_smart_factory::AssignChargingTaskRequest > AssignChargingTaskRequestPtr;
typedef boost::shared_ptr< ::auto_smart_factory::AssignChargingTaskRequest const> AssignChargingTaskRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace auto_smart_factory

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'auto_smart_factory': ['/home/nishant/smart_factory_ss19_g3/src/auto_smart_factory/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "95a2f5a2b9c6e2ef20582876b779ac21";
  }

  static const char* value(const ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x95a2f5a2b9c6e2efULL;
  static const uint64_t static_value2 = 0x20582876b779ac21ULL;
};

template<class ContainerAllocator>
struct DataType< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "auto_smart_factory/AssignChargingTaskRequest";
  }

  static const char* value(const ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 tray_id\n\
bool end\n\
";
  }

  static const char* value(const ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tray_id);
      stream.next(m.end);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AssignChargingTaskRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::auto_smart_factory::AssignChargingTaskRequest_<ContainerAllocator>& v)
  {
    s << indent << "tray_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.tray_id);
    s << indent << "end: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.end);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_ASSIGNCHARGINGTASKREQUEST_H