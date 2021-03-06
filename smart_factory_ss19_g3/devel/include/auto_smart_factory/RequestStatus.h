// Generated by gencpp from file auto_smart_factory/RequestStatus.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_REQUESTSTATUS_H
#define AUTO_SMART_FACTORY_MESSAGE_REQUESTSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <auto_smart_factory/PackageConfiguration.h>

namespace auto_smart_factory
{
template <class ContainerAllocator>
struct RequestStatus_
{
  typedef RequestStatus_<ContainerAllocator> Type;

  RequestStatus_()
    : stamp()
    , id(0)
    , type()
    , pkg_config()
    , create_time()
    , status()  {
    }
  RequestStatus_(const ContainerAllocator& _alloc)
    : stamp()
    , id(0)
    , type(_alloc)
    , pkg_config(_alloc)
    , create_time()
    , status(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef uint32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_type;
  _type_type type;

   typedef  ::auto_smart_factory::PackageConfiguration_<ContainerAllocator>  _pkg_config_type;
  _pkg_config_type pkg_config;

   typedef ros::Time _create_time_type;
  _create_time_type create_time;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::auto_smart_factory::RequestStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auto_smart_factory::RequestStatus_<ContainerAllocator> const> ConstPtr;

}; // struct RequestStatus_

typedef ::auto_smart_factory::RequestStatus_<std::allocator<void> > RequestStatus;

typedef boost::shared_ptr< ::auto_smart_factory::RequestStatus > RequestStatusPtr;
typedef boost::shared_ptr< ::auto_smart_factory::RequestStatus const> RequestStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::auto_smart_factory::RequestStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::auto_smart_factory::RequestStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace auto_smart_factory

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'auto_smart_factory': ['/home/nishant/smart_factory_ss19_g3/src/auto_smart_factory/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::auto_smart_factory::RequestStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::auto_smart_factory::RequestStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::RequestStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::RequestStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::RequestStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::RequestStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::auto_smart_factory::RequestStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bc3a3dfca62979fa9ca3cdbb8d695ce9";
  }

  static const char* value(const ::auto_smart_factory::RequestStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbc3a3dfca62979faULL;
  static const uint64_t static_value2 = 0x9ca3cdbb8d695ce9ULL;
};

template<class ContainerAllocator>
struct DataType< ::auto_smart_factory::RequestStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "auto_smart_factory/RequestStatus";
  }

  static const char* value(const ::auto_smart_factory::RequestStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::auto_smart_factory::RequestStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# time stamp for this status message\n\
time stamp\n\
\n\
# id of this request\n\
uint32 id\n\
\n\
# type of request. This is either 'input' or 'output'\n\
string type\n\
\n\
# the package type\n\
PackageConfiguration pkg_config\n\
\n\
# time when this request was created\n\
time create_time\n\
\n\
# message describing the current status of this request\n\
string status\n\
\n\
\n\
================================================================================\n\
MSG: auto_smart_factory/PackageConfiguration\n\
# package type id (!= package id)\n\
uint32 id\n\
\n\
# package dimensions\n\
float32 width\n\
float32 height\n\
\n\
# package weight\n\
float32 weight\n\
\n\
";
  }

  static const char* value(const ::auto_smart_factory::RequestStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::auto_smart_factory::RequestStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.id);
      stream.next(m.type);
      stream.next(m.pkg_config);
      stream.next(m.create_time);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RequestStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auto_smart_factory::RequestStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::auto_smart_factory::RequestStatus_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type);
    s << indent << "pkg_config: ";
    s << std::endl;
    Printer< ::auto_smart_factory::PackageConfiguration_<ContainerAllocator> >::stream(s, indent + "  ", v.pkg_config);
    s << indent << "create_time: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.create_time);
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_REQUESTSTATUS_H
