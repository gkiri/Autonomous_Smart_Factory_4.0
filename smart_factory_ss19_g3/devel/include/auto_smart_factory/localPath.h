// Generated by gencpp from file auto_smart_factory/localPath.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_LOCALPATH_H
#define AUTO_SMART_FACTORY_MESSAGE_LOCALPATH_H

#include <ros/service_traits.h>


#include <auto_smart_factory/localPathRequest.h>
#include <auto_smart_factory/localPathResponse.h>


namespace auto_smart_factory
{

struct localPath
{

typedef localPathRequest Request;
typedef localPathResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct localPath
} // namespace auto_smart_factory


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::auto_smart_factory::localPath > {
  static const char* value()
  {
    return "37b8d65f792389d92caeae306153ccb7";
  }

  static const char* value(const ::auto_smart_factory::localPath&) { return value(); }
};

template<>
struct DataType< ::auto_smart_factory::localPath > {
  static const char* value()
  {
    return "auto_smart_factory/localPath";
  }

  static const char* value(const ::auto_smart_factory::localPath&) { return value(); }
};


// service_traits::MD5Sum< ::auto_smart_factory::localPathRequest> should match 
// service_traits::MD5Sum< ::auto_smart_factory::localPath > 
template<>
struct MD5Sum< ::auto_smart_factory::localPathRequest>
{
  static const char* value()
  {
    return MD5Sum< ::auto_smart_factory::localPath >::value();
  }
  static const char* value(const ::auto_smart_factory::localPathRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::auto_smart_factory::localPathRequest> should match 
// service_traits::DataType< ::auto_smart_factory::localPath > 
template<>
struct DataType< ::auto_smart_factory::localPathRequest>
{
  static const char* value()
  {
    return DataType< ::auto_smart_factory::localPath >::value();
  }
  static const char* value(const ::auto_smart_factory::localPathRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::auto_smart_factory::localPathResponse> should match 
// service_traits::MD5Sum< ::auto_smart_factory::localPath > 
template<>
struct MD5Sum< ::auto_smart_factory::localPathResponse>
{
  static const char* value()
  {
    return MD5Sum< ::auto_smart_factory::localPath >::value();
  }
  static const char* value(const ::auto_smart_factory::localPathResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::auto_smart_factory::localPathResponse> should match 
// service_traits::DataType< ::auto_smart_factory::localPath > 
template<>
struct DataType< ::auto_smart_factory::localPathResponse>
{
  static const char* value()
  {
    return DataType< ::auto_smart_factory::localPath >::value();
  }
  static const char* value(const ::auto_smart_factory::localPathResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_LOCALPATH_H