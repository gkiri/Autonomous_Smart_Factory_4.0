// Generated by gencpp from file auto_smart_factory/TrayState.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_TRAYSTATE_H
#define AUTO_SMART_FACTORY_MESSAGE_TRAYSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <auto_smart_factory/Package.h>

namespace auto_smart_factory
{
template <class ContainerAllocator>
struct TrayState_
{
  typedef TrayState_<ContainerAllocator> Type;

  TrayState_()
    : id(0)
    , occupied(false)
    , available(false)
    , package()  {
    }
  TrayState_(const ContainerAllocator& _alloc)
    : id(0)
    , occupied(false)
    , available(false)
    , package(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _id_type;
  _id_type id;

   typedef uint8_t _occupied_type;
  _occupied_type occupied;

   typedef uint8_t _available_type;
  _available_type available;

   typedef  ::auto_smart_factory::Package_<ContainerAllocator>  _package_type;
  _package_type package;





  typedef boost::shared_ptr< ::auto_smart_factory::TrayState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auto_smart_factory::TrayState_<ContainerAllocator> const> ConstPtr;

}; // struct TrayState_

typedef ::auto_smart_factory::TrayState_<std::allocator<void> > TrayState;

typedef boost::shared_ptr< ::auto_smart_factory::TrayState > TrayStatePtr;
typedef boost::shared_ptr< ::auto_smart_factory::TrayState const> TrayStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::auto_smart_factory::TrayState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::auto_smart_factory::TrayState_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::auto_smart_factory::TrayState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::auto_smart_factory::TrayState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::TrayState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::TrayState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::TrayState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::TrayState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::auto_smart_factory::TrayState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "643c502f6bd6aed46ad54aaea2358f46";
  }

  static const char* value(const ::auto_smart_factory::TrayState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x643c502f6bd6aed4ULL;
  static const uint64_t static_value2 = 0x6ad54aaea2358f46ULL;
};

template<class ContainerAllocator>
struct DataType< ::auto_smart_factory::TrayState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "auto_smart_factory/TrayState";
  }

  static const char* value(const ::auto_smart_factory::TrayState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::auto_smart_factory::TrayState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# the unique tray ID\n\
uint32 id\n\
\n\
# Indicates whether the tray is occupied or not.\n\
bool occupied\n\
\n\
# Availability of the tray. If false the the tray is allocated by a task.\n\
bool available\n\
\n\
# information about the package stored in this tray (only valid if state != free)\n\
Package package\n\
\n\
\n\
================================================================================\n\
MSG: auto_smart_factory/Package\n\
# the unique id of this package\n\
uint32 id\n\
\n\
# the id of the package type/configuration\n\
uint32 type_id\n\
\n\
";
  }

  static const char* value(const ::auto_smart_factory::TrayState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::auto_smart_factory::TrayState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.occupied);
      stream.next(m.available);
      stream.next(m.package);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrayState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auto_smart_factory::TrayState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::auto_smart_factory::TrayState_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "occupied: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.occupied);
    s << indent << "available: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.available);
    s << indent << "package: ";
    s << std::endl;
    Printer< ::auto_smart_factory::Package_<ContainerAllocator> >::stream(s, indent + "  ", v.package);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_TRAYSTATE_H
