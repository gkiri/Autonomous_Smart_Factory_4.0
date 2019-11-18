// Generated by gencpp from file auto_smart_factory/GetPackage.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_GETPACKAGE_H
#define AUTO_SMART_FACTORY_MESSAGE_GETPACKAGE_H

#include <ros/service_traits.h>


#include <auto_smart_factory/GetPackageRequest.h>
#include <auto_smart_factory/GetPackageResponse.h>


namespace auto_smart_factory
{

struct GetPackage
{

typedef GetPackageRequest Request;
typedef GetPackageResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetPackage
} // namespace auto_smart_factory


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::auto_smart_factory::GetPackage > {
  static const char* value()
  {
    return "a9957da21dd82923674226f14b0e4338";
  }

  static const char* value(const ::auto_smart_factory::GetPackage&) { return value(); }
};

template<>
struct DataType< ::auto_smart_factory::GetPackage > {
  static const char* value()
  {
    return "auto_smart_factory/GetPackage";
  }

  static const char* value(const ::auto_smart_factory::GetPackage&) { return value(); }
};


// service_traits::MD5Sum< ::auto_smart_factory::GetPackageRequest> should match 
// service_traits::MD5Sum< ::auto_smart_factory::GetPackage > 
template<>
struct MD5Sum< ::auto_smart_factory::GetPackageRequest>
{
  static const char* value()
  {
    return MD5Sum< ::auto_smart_factory::GetPackage >::value();
  }
  static const char* value(const ::auto_smart_factory::GetPackageRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::auto_smart_factory::GetPackageRequest> should match 
// service_traits::DataType< ::auto_smart_factory::GetPackage > 
template<>
struct DataType< ::auto_smart_factory::GetPackageRequest>
{
  static const char* value()
  {
    return DataType< ::auto_smart_factory::GetPackage >::value();
  }
  static const char* value(const ::auto_smart_factory::GetPackageRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::auto_smart_factory::GetPackageResponse> should match 
// service_traits::MD5Sum< ::auto_smart_factory::GetPackage > 
template<>
struct MD5Sum< ::auto_smart_factory::GetPackageResponse>
{
  static const char* value()
  {
    return MD5Sum< ::auto_smart_factory::GetPackage >::value();
  }
  static const char* value(const ::auto_smart_factory::GetPackageResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::auto_smart_factory::GetPackageResponse> should match 
// service_traits::DataType< ::auto_smart_factory::GetPackage > 
template<>
struct DataType< ::auto_smart_factory::GetPackageResponse>
{
  static const char* value()
  {
    return DataType< ::auto_smart_factory::GetPackage >::value();
  }
  static const char* value(const ::auto_smart_factory::GetPackageResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_GETPACKAGE_H