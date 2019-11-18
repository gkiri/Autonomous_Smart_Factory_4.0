// Generated by gencpp from file auto_smart_factory/PackageLoadUnload.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_PACKAGELOADUNLOAD_H
#define AUTO_SMART_FACTORY_MESSAGE_PACKAGELOADUNLOAD_H

#include <ros/service_traits.h>


#include <auto_smart_factory/PackageLoadUnloadRequest.h>
#include <auto_smart_factory/PackageLoadUnloadResponse.h>


namespace auto_smart_factory
{

struct PackageLoadUnload
{

typedef PackageLoadUnloadRequest Request;
typedef PackageLoadUnloadResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PackageLoadUnload
} // namespace auto_smart_factory


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::auto_smart_factory::PackageLoadUnload > {
  static const char* value()
  {
    return "c4d3a214c65f27f5df9ff54dfe5d21d2";
  }

  static const char* value(const ::auto_smart_factory::PackageLoadUnload&) { return value(); }
};

template<>
struct DataType< ::auto_smart_factory::PackageLoadUnload > {
  static const char* value()
  {
    return "auto_smart_factory/PackageLoadUnload";
  }

  static const char* value(const ::auto_smart_factory::PackageLoadUnload&) { return value(); }
};


// service_traits::MD5Sum< ::auto_smart_factory::PackageLoadUnloadRequest> should match 
// service_traits::MD5Sum< ::auto_smart_factory::PackageLoadUnload > 
template<>
struct MD5Sum< ::auto_smart_factory::PackageLoadUnloadRequest>
{
  static const char* value()
  {
    return MD5Sum< ::auto_smart_factory::PackageLoadUnload >::value();
  }
  static const char* value(const ::auto_smart_factory::PackageLoadUnloadRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::auto_smart_factory::PackageLoadUnloadRequest> should match 
// service_traits::DataType< ::auto_smart_factory::PackageLoadUnload > 
template<>
struct DataType< ::auto_smart_factory::PackageLoadUnloadRequest>
{
  static const char* value()
  {
    return DataType< ::auto_smart_factory::PackageLoadUnload >::value();
  }
  static const char* value(const ::auto_smart_factory::PackageLoadUnloadRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::auto_smart_factory::PackageLoadUnloadResponse> should match 
// service_traits::MD5Sum< ::auto_smart_factory::PackageLoadUnload > 
template<>
struct MD5Sum< ::auto_smart_factory::PackageLoadUnloadResponse>
{
  static const char* value()
  {
    return MD5Sum< ::auto_smart_factory::PackageLoadUnload >::value();
  }
  static const char* value(const ::auto_smart_factory::PackageLoadUnloadResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::auto_smart_factory::PackageLoadUnloadResponse> should match 
// service_traits::DataType< ::auto_smart_factory::PackageLoadUnload > 
template<>
struct DataType< ::auto_smart_factory::PackageLoadUnloadResponse>
{
  static const char* value()
  {
    return DataType< ::auto_smart_factory::PackageLoadUnload >::value();
  }
  static const char* value(const ::auto_smart_factory::PackageLoadUnloadResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_PACKAGELOADUNLOAD_H