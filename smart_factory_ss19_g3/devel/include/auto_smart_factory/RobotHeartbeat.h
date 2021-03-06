// Generated by gencpp from file auto_smart_factory/RobotHeartbeat.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_ROBOTHEARTBEAT_H
#define AUTO_SMART_FACTORY_MESSAGE_ROBOTHEARTBEAT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace auto_smart_factory
{
template <class ContainerAllocator>
struct RobotHeartbeat_
{
  typedef RobotHeartbeat_<ContainerAllocator> Type;

  RobotHeartbeat_()
    : id()
    , idle(false)
    , position()
    , orientation(0.0)
    , battery_level(0.0)
    , eta(0.0)
    , with_package(false)
    , queue_length(0)  {
    }
  RobotHeartbeat_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , idle(false)
    , position(_alloc)
    , orientation(0.0)
    , battery_level(0.0)
    , eta(0.0)
    , with_package(false)
    , queue_length(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  _id_type id;

   typedef uint8_t _idle_type;
  _idle_type idle;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef float _orientation_type;
  _orientation_type orientation;

   typedef float _battery_level_type;
  _battery_level_type battery_level;

   typedef float _eta_type;
  _eta_type eta;

   typedef uint8_t _with_package_type;
  _with_package_type with_package;

   typedef uint8_t _queue_length_type;
  _queue_length_type queue_length;





  typedef boost::shared_ptr< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> const> ConstPtr;

}; // struct RobotHeartbeat_

typedef ::auto_smart_factory::RobotHeartbeat_<std::allocator<void> > RobotHeartbeat;

typedef boost::shared_ptr< ::auto_smart_factory::RobotHeartbeat > RobotHeartbeatPtr;
typedef boost::shared_ptr< ::auto_smart_factory::RobotHeartbeat const> RobotHeartbeatConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ba85488467034734d06763799c12f823";
  }

  static const char* value(const ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xba85488467034734ULL;
  static const uint64_t static_value2 = 0xd06763799c12f823ULL;
};

template<class ContainerAllocator>
struct DataType< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "auto_smart_factory/RobotHeartbeat";
  }

  static const char* value(const ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# robot id\n\
string id\n\
\n\
# is the robot idle?\n\
bool idle\n\
\n\
# robot position\n\
geometry_msgs/Point position\n\
\n\
# robot orientation\n\
float32 orientation\n\
\n\
# battery state of robot 0 - 100\n\
float32 battery_level\n\
\n\
# eta for a robot\n\
float32 eta\n\
\n\
# is it carring a package?\n\
bool with_package\n\
\n\
# package queue size\n\
uint8 queue_length\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.idle);
      stream.next(m.position);
      stream.next(m.orientation);
      stream.next(m.battery_level);
      stream.next(m.eta);
      stream.next(m.with_package);
      stream.next(m.queue_length);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotHeartbeat_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::auto_smart_factory::RobotHeartbeat_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
    s << indent << "idle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.idle);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "orientation: ";
    Printer<float>::stream(s, indent + "  ", v.orientation);
    s << indent << "battery_level: ";
    Printer<float>::stream(s, indent + "  ", v.battery_level);
    s << indent << "eta: ";
    Printer<float>::stream(s, indent + "  ", v.eta);
    s << indent << "with_package: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.with_package);
    s << indent << "queue_length: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.queue_length);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_ROBOTHEARTBEAT_H
