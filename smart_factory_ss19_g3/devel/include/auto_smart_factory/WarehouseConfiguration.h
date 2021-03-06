// Generated by gencpp from file auto_smart_factory/WarehouseConfiguration.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_WAREHOUSECONFIGURATION_H
#define AUTO_SMART_FACTORY_MESSAGE_WAREHOUSECONFIGURATION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <auto_smart_factory/Tray.h>
#include <auto_smart_factory/Wall.h>
#include <auto_smart_factory/TrayGeometry.h>
#include <auto_smart_factory/WallGeometry.h>
#include <nav_msgs/OccupancyGrid.h>
#include <auto_smart_factory/PackagePool.h>
#include <auto_smart_factory/Robot.h>
#include <auto_smart_factory/IdlePosition.h>

namespace auto_smart_factory
{
template <class ContainerAllocator>
struct WarehouseConfiguration_
{
  typedef WarehouseConfiguration_<ContainerAllocator> Type;

  WarehouseConfiguration_()
    : width(0.0)
    , height(0.0)
    , trays()
    , walls()
    , tray_geometry()
    , wall_geometry()
    , occupancy_map()
    , package_pool()
    , robots()
    , idle_positions()  {
    }
  WarehouseConfiguration_(const ContainerAllocator& _alloc)
    : width(0.0)
    , height(0.0)
    , trays(_alloc)
    , walls(_alloc)
    , tray_geometry(_alloc)
    , wall_geometry(_alloc)
    , occupancy_map(_alloc)
    , package_pool(_alloc)
    , robots(_alloc)
    , idle_positions(_alloc)  {
  (void)_alloc;
    }



   typedef float _width_type;
  _width_type width;

   typedef float _height_type;
  _height_type height;

   typedef std::vector< ::auto_smart_factory::Tray_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::auto_smart_factory::Tray_<ContainerAllocator> >::other >  _trays_type;
  _trays_type trays;

   typedef std::vector< ::auto_smart_factory::Wall_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::auto_smart_factory::Wall_<ContainerAllocator> >::other >  _walls_type;
  _walls_type walls;

   typedef  ::auto_smart_factory::TrayGeometry_<ContainerAllocator>  _tray_geometry_type;
  _tray_geometry_type tray_geometry;

   typedef  ::auto_smart_factory::WallGeometry_<ContainerAllocator>  _wall_geometry_type;
  _wall_geometry_type wall_geometry;

   typedef  ::nav_msgs::OccupancyGrid_<ContainerAllocator>  _occupancy_map_type;
  _occupancy_map_type occupancy_map;

   typedef  ::auto_smart_factory::PackagePool_<ContainerAllocator>  _package_pool_type;
  _package_pool_type package_pool;

   typedef std::vector< ::auto_smart_factory::Robot_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::auto_smart_factory::Robot_<ContainerAllocator> >::other >  _robots_type;
  _robots_type robots;

   typedef std::vector< ::auto_smart_factory::IdlePosition_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::auto_smart_factory::IdlePosition_<ContainerAllocator> >::other >  _idle_positions_type;
  _idle_positions_type idle_positions;





  typedef boost::shared_ptr< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> const> ConstPtr;

}; // struct WarehouseConfiguration_

typedef ::auto_smart_factory::WarehouseConfiguration_<std::allocator<void> > WarehouseConfiguration;

typedef boost::shared_ptr< ::auto_smart_factory::WarehouseConfiguration > WarehouseConfigurationPtr;
typedef boost::shared_ptr< ::auto_smart_factory::WarehouseConfiguration const> WarehouseConfigurationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d6b22f5b35a51b0f4e33943dec0ac3f0";
  }

  static const char* value(const ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd6b22f5b35a51b0fULL;
  static const uint64_t static_value2 = 0x4e33943dec0ac3f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> >
{
  static const char* value()
  {
    return "auto_smart_factory/WarehouseConfiguration";
  }

  static const char* value(const ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# dimensions of the map in meters\n\
float32 width\n\
float32 height\n\
\n\
# Info about the trays\n\
Tray[] trays\n\
\n\
# Info about the walls\n\
Wall[] walls\n\
\n\
# Info about the tray geometry\n\
TrayGeometry tray_geometry\n\
\n\
# Info about the wall geometry\n\
WallGeometry wall_geometry\n\
\n\
# The occupancy map of the warehouse\n\
nav_msgs/OccupancyGrid occupancy_map\n\
\n\
# The package pool\n\
PackagePool package_pool\n\
\n\
# Robots in this warehouse\n\
Robot[] robots\n\
\n\
# Idle positions of the robots\n\
IdlePosition[] idle_positions\n\
\n\
\n\
================================================================================\n\
MSG: auto_smart_factory/Tray\n\
# The representation of a warehouse tray\n\
\n\
# the unique identifier of this tray\n\
uint32 id\n\
\n\
# the type of the tray. Valid values: 'input', 'output' and 'storage'\n\
string type\n\
\n\
# the coordinates of the center of the tray in the '/map' frame\n\
float32 x\n\
float32 y\n\
\n\
# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.\n\
float32 orientation\n\
\n\
# maximum load, i.e. the maximum weight of packages to be put into this tray\n\
float32 max_load\n\
\n\
# package type this tray can carry. 0 means no constraints.\n\
uint32 package_type\n\
\n\
================================================================================\n\
MSG: auto_smart_factory/Wall\n\
# The representation of a warehouse wall\n\
\n\
# the coordinates of the center of the wall in the '/map' frame\n\
float32 x\n\
float32 y\n\
\n\
# the yaw angle of the tray in the '/map' frame (ccw, in degree). Currently only multiples of 90 degree are supported.\n\
float32 orientation\n\
\n\
\n\
\n\
================================================================================\n\
MSG: auto_smart_factory/TrayGeometry\n\
# Info about the tray geometry\n\
float32 width\n\
float32 height\n\
\n\
\n\
================================================================================\n\
MSG: auto_smart_factory/WallGeometry\n\
# Info about the wall geometry\n\
float32 width\n\
float32 height\n\
\n\
\n\
================================================================================\n\
MSG: nav_msgs/OccupancyGrid\n\
# This represents a 2-D grid map, in which each cell represents the probability of\n\
# occupancy.\n\
\n\
Header header \n\
\n\
#MetaData for the map\n\
MapMetaData info\n\
\n\
# The map data, in row-major order, starting with (0,0).  Occupancy\n\
# probabilities are in the range [0,100].  Unknown is -1.\n\
int8[] data\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: nav_msgs/MapMetaData\n\
# This hold basic information about the characterists of the OccupancyGrid\n\
\n\
# The time at which the map was loaded\n\
time map_load_time\n\
# The map resolution [m/cell]\n\
float32 resolution\n\
# Map width [cells]\n\
uint32 width\n\
# Map height [cells]\n\
uint32 height\n\
# The origin of the map [m, m, rad].  This is the real-world pose of the\n\
# cell (0,0) in the map.\n\
geometry_msgs/Pose origin\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: auto_smart_factory/PackagePool\n\
# Drop location: The 3D point where packages can be dropped to be placed in the container.\n\
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
================================================================================\n\
MSG: auto_smart_factory/Robot\n\
# id of this robot\n\
string id\n\
\n\
# type name of this robot\n\
string type\n\
\n\
\n\
================================================================================\n\
MSG: auto_smart_factory/IdlePosition\n\
# unique robot id/name\n\
string id\n\
\n\
# idle pose, yaw angle in degree\n\
geometry_msgs/Pose2D pose\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# Deprecated\n\
# Please use the full 3D pose.\n\
\n\
# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n\
\n\
# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n\
\n\
\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
";
  }

  static const char* value(const ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.width);
      stream.next(m.height);
      stream.next(m.trays);
      stream.next(m.walls);
      stream.next(m.tray_geometry);
      stream.next(m.wall_geometry);
      stream.next(m.occupancy_map);
      stream.next(m.package_pool);
      stream.next(m.robots);
      stream.next(m.idle_positions);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WarehouseConfiguration_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::auto_smart_factory::WarehouseConfiguration_<ContainerAllocator>& v)
  {
    s << indent << "width: ";
    Printer<float>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<float>::stream(s, indent + "  ", v.height);
    s << indent << "trays[]" << std::endl;
    for (size_t i = 0; i < v.trays.size(); ++i)
    {
      s << indent << "  trays[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::auto_smart_factory::Tray_<ContainerAllocator> >::stream(s, indent + "    ", v.trays[i]);
    }
    s << indent << "walls[]" << std::endl;
    for (size_t i = 0; i < v.walls.size(); ++i)
    {
      s << indent << "  walls[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::auto_smart_factory::Wall_<ContainerAllocator> >::stream(s, indent + "    ", v.walls[i]);
    }
    s << indent << "tray_geometry: ";
    s << std::endl;
    Printer< ::auto_smart_factory::TrayGeometry_<ContainerAllocator> >::stream(s, indent + "  ", v.tray_geometry);
    s << indent << "wall_geometry: ";
    s << std::endl;
    Printer< ::auto_smart_factory::WallGeometry_<ContainerAllocator> >::stream(s, indent + "  ", v.wall_geometry);
    s << indent << "occupancy_map: ";
    s << std::endl;
    Printer< ::nav_msgs::OccupancyGrid_<ContainerAllocator> >::stream(s, indent + "  ", v.occupancy_map);
    s << indent << "package_pool: ";
    s << std::endl;
    Printer< ::auto_smart_factory::PackagePool_<ContainerAllocator> >::stream(s, indent + "  ", v.package_pool);
    s << indent << "robots[]" << std::endl;
    for (size_t i = 0; i < v.robots.size(); ++i)
    {
      s << indent << "  robots[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::auto_smart_factory::Robot_<ContainerAllocator> >::stream(s, indent + "    ", v.robots[i]);
    }
    s << indent << "idle_positions[]" << std::endl;
    for (size_t i = 0; i < v.idle_positions.size(); ++i)
    {
      s << indent << "  idle_positions[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::auto_smart_factory::IdlePosition_<ContainerAllocator> >::stream(s, indent + "    ", v.idle_positions[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_WAREHOUSECONFIGURATION_H
