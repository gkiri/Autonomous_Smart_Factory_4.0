// Generated by gencpp from file auto_smart_factory/TaskState.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_TASKSTATE_H
#define AUTO_SMART_FACTORY_MESSAGE_TASKSTATE_H


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
struct TaskState_
{
  typedef TaskState_<ContainerAllocator> Type;

  TaskState_()
    : id(0)
    , status()
    , requestCreateTime()
    , runTime()
    , loadTime()
    , unloadTime()
    , estimatedDuration()
    , robot()
    , package()
    , sourceTray(0)
    , targetTray(0)  {
    }
  TaskState_(const ContainerAllocator& _alloc)
    : id(0)
    , status(_alloc)
    , requestCreateTime()
    , runTime()
    , loadTime()
    , unloadTime()
    , estimatedDuration()
    , robot(_alloc)
    , package(_alloc)
    , sourceTray(0)
    , targetTray(0)  {
  (void)_alloc;
    }



   typedef uint32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;

   typedef ros::Time _requestCreateTime_type;
  _requestCreateTime_type requestCreateTime;

   typedef ros::Time _runTime_type;
  _runTime_type runTime;

   typedef ros::Time _loadTime_type;
  _loadTime_type loadTime;

   typedef ros::Time _unloadTime_type;
  _unloadTime_type unloadTime;

   typedef ros::Duration _estimatedDuration_type;
  _estimatedDuration_type estimatedDuration;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _robot_type;
  _robot_type robot;

   typedef  ::auto_smart_factory::Package_<ContainerAllocator>  _package_type;
  _package_type package;

   typedef uint32_t _sourceTray_type;
  _sourceTray_type sourceTray;

   typedef uint32_t _targetTray_type;
  _targetTray_type targetTray;





  typedef boost::shared_ptr< ::auto_smart_factory::TaskState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auto_smart_factory::TaskState_<ContainerAllocator> const> ConstPtr;

}; // struct TaskState_

typedef ::auto_smart_factory::TaskState_<std::allocator<void> > TaskState;

typedef boost::shared_ptr< ::auto_smart_factory::TaskState > TaskStatePtr;
typedef boost::shared_ptr< ::auto_smart_factory::TaskState const> TaskStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::auto_smart_factory::TaskState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::auto_smart_factory::TaskState_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::auto_smart_factory::TaskState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::auto_smart_factory::TaskState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::TaskState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_smart_factory::TaskState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::TaskState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_smart_factory::TaskState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::auto_smart_factory::TaskState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b2297c0e49c8c648ed6360e170926b8d";
  }

  static const char* value(const ::auto_smart_factory::TaskState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb2297c0e49c8c648ULL;
  static const uint64_t static_value2 = 0xed6360e170926b8dULL;
};

template<class ContainerAllocator>
struct DataType< ::auto_smart_factory::TaskState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "auto_smart_factory/TaskState";
  }

  static const char* value(const ::auto_smart_factory::TaskState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::auto_smart_factory::TaskState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# unique task id\n\
uint32 id\n\
\n\
# the state of the task. Valid values: 'initialized', 'running', 'waiting for package', ...\n\
string status\n\
\n\
# timings (0 if not yet set)\n\
\n\
# time when the associated request was created\n\
time requestCreateTime\n\
\n\
# timestamp when the task was started\n\
time runTime\n\
\n\
# timestamp when the load was acknowledged\n\
time loadTime\n\
\n\
# timestamp when the unload was acknowledged\n\
time unloadTime\n\
\n\
# estimated duration from run to unload estimated by the roadmap planner\n\
duration estimatedDuration\n\
\n\
# task data\n\
\n\
# id of the assigned robot\n\
string robot\n\
\n\
# Package this task is dealing with.\n\
Package package\n\
\n\
# The source and the target of this task\n\
uint32 sourceTray\n\
uint32 targetTray\n\
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

  static const char* value(const ::auto_smart_factory::TaskState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::auto_smart_factory::TaskState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.status);
      stream.next(m.requestCreateTime);
      stream.next(m.runTime);
      stream.next(m.loadTime);
      stream.next(m.unloadTime);
      stream.next(m.estimatedDuration);
      stream.next(m.robot);
      stream.next(m.package);
      stream.next(m.sourceTray);
      stream.next(m.targetTray);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TaskState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auto_smart_factory::TaskState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::auto_smart_factory::TaskState_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
    s << indent << "requestCreateTime: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.requestCreateTime);
    s << indent << "runTime: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.runTime);
    s << indent << "loadTime: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.loadTime);
    s << indent << "unloadTime: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.unloadTime);
    s << indent << "estimatedDuration: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.estimatedDuration);
    s << indent << "robot: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robot);
    s << indent << "package: ";
    s << std::endl;
    Printer< ::auto_smart_factory::Package_<ContainerAllocator> >::stream(s, indent + "  ", v.package);
    s << indent << "sourceTray: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.sourceTray);
    s << indent << "targetTray: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.targetTray);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_TASKSTATE_H
