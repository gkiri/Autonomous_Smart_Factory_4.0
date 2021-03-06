// Generated by gencpp from file auto_smart_factory/GetPackageRequest.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_GETPACKAGEREQUEST_H
#define AUTO_SMART_FACTORY_MESSAGE_GETPACKAGEREQUEST_H


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
struct GetPackageRequest_
{
  typedef GetPackageRequest_<ContainerAllocator> Type;

  GetPackageRequest_()
    : trayId(0)  {
    }
  GetPackageRequest_(const ContainerAllocator& _alloc)
    : trayId(0)  {
  (void)_alloc;
    }



   typedef uint32_t _trayId_type;
  _trayId_type trayId;





  typedef boost::shared_ptr< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetPackageRequest_

typedef ::auto_smart_factory::GetPackageRequest_<std::allocator<void> > GetPackageRequest;

typedef boost::shared_ptr< ::auto_smart_factory::GetPackageRequest > GetPackageRequestPtr;
typedef boost::shared_ptr< ::auto_smart_factory::GetPackageRequest const> GetPackageRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1f5323c6390f45b7203b662400a202be";
  }

  static const char* value(const ::auto_smart_factory::GetPackageRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1f5323c6390f45b7ULL;
  static const uint64_t static_value2 = 0x203b662400a202beULL;
};

template<class ContainerAllocator>
struct DataType< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "auto_smart_factory/GetPackageRequest";
  }

  static const char* value(const ::auto_smart_factory::GetPackageRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 trayId\n\
";
  }

  static const char* value(const ::auto_smart_factory::GetPackageRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.trayId);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPackageRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auto_smart_factory::GetPackageRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::auto_smart_factory::GetPackageRequest_<ContainerAllocator>& v)
  {
    s << indent << "trayId: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.trayId);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_GETPACKAGEREQUEST_H
