// Generated by gencpp from file auto_smart_factory/PackagePool.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_PACKAGEPOOL_H
#define AUTO_SMART_FACTORY_MESSAGE_PACKAGEPOOL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point32.h>
#include <geometry_msgs/Point32.h>

namespace auto_smart_factory
{
template <class ContainerAllocator>
struct PackagePool_
{
  typedef PackagePool_<ContainerAllocator> Type;

  PackagePool_()
    : drop_location()
    , stacking_area()  {
    }
  PackagePool_(const ContainerAllocator& _alloc)
    : drop_location(_alloc)
    , stacking_area()  {
  (void)_alloc;
      stacking_area.assign( ::geometry_msgs::Point32_<ContainerAllocator> (_alloc));
  }



   typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _drop_location_type;
  _drop_location_type drop_location;

   typedef boost::array< ::geometry_msgs::Point32_<ContainerAllocator> , 2>  _stacking_area_type;
  _stacking_area_type stacking_area;





  typedef boost::shared_ptr< ::auto_smart_factory::PackagePool_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auto_smart_factory::PackagePool_<ContainerAllocator> const> ConstPtr;

}; // struct PackagePool_

typedef ::auto_smart_factory::PackagePool_<std::allocator<void> > PackagePool;

typedef boost::shared_ptr< ::auto_smart_factory::PackagePool > PackagePoolPtr;
typedef boost::shared_ptr< ::auto_smart_factory::PackagePool const> PackagePoolConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::auto_smart_factory::PackagePool_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::auto_smart_factory::PackagePool_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::auto_smart_factory::PackagePool_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::auto_smart_factory::PackagePool_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::PackagePool_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::PackagePool_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::PackagePool_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::PackagePool_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::auto_smart_factory::PackagePool_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bcef3bd1883fdc3a8214f645cc30ecaa";
  }

  static const char* value(const ::auto_smart_factory::PackagePool_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbcef3bd1883fdc3aULL;
  static const uint64_t static_value2 = 0x8214f645cc30ecaaULL;
};

template<class ContainerAllocator>
struct DataType< ::auto_smart_factory::PackagePool_<ContainerAllocator> >
{
  static const char* value()
  {
    return "auto_smart_factory/PackagePool";
  }

  static const char* value(const ::auto_smart_factory::PackagePool_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::auto_smart_factory::PackagePool_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Drop location: The 3D point where packages can be dropped to be placed in the container.\n\
geometry_msgs/Point32 drop_location\n\
\n\
# Stacking area: Area where packages can be stacked at the beginning\n\
geometry_msgs/Point32[2] stacking_area\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point32\n\
# This contains the position of a point in free space(with 32 bits of precision).\n\
# It is recommeded to use Point wherever possible instead of Point32.  \n\
# \n\
# This recommendation is to promote interoperability.  \n\
#\n\
# This message is designed to take up less space when sending\n\
# lots of points at once, as in the case of a PointCloud.  \n\
\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const ::auto_smart_factory::PackagePool_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::auto_smart_factory::PackagePool_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.drop_location);
      stream.next(m.stacking_area);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PackagePool_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auto_smart_factory::PackagePool_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::auto_smart_factory::PackagePool_<ContainerAllocator>& v)
  {
    s << indent << "drop_location: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.drop_location);
    s << indent << "stacking_area[]" << std::endl;
    for (size_t i = 0; i < v.stacking_area.size(); ++i)
    {
      s << indent << "  stacking_area[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "    ", v.stacking_area[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_PACKAGEPOOL_H
