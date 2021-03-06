// Generated by gencpp from file auto_smart_factory/RetrievePackage.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_RETRIEVEPACKAGE_H
#define AUTO_SMART_FACTORY_MESSAGE_RETRIEVEPACKAGE_H

#include <ros/service_traits.h>


#include <auto_smart_factory/RetrievePackageRequest.h>
#include <auto_smart_factory/RetrievePackageResponse.h>


namespace auto_smart_factory
{

struct RetrievePackage
{

typedef RetrievePackageRequest Request;
typedef RetrievePackageResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RetrievePackage
} // namespace auto_smart_factory


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::auto_smart_factory::RetrievePackage > {
  static const char* value()
  {
    return "e43717cc6bfa4923c8b070370e484aeb";
  }

  static const char* value(const ::auto_smart_factory::RetrievePackage&) { return value(); }
};

template<>
struct DataType< ::auto_smart_factory::RetrievePackage > {
  static const char* value()
  {
    return "auto_smart_factory/RetrievePackage";
  }

  static const char* value(const ::auto_smart_factory::RetrievePackage&) { return value(); }
};


// service_traits::MD5Sum< ::auto_smart_factory::RetrievePackageRequest> should match 
// service_traits::MD5Sum< ::auto_smart_factory::RetrievePackage > 
template<>
struct MD5Sum< ::auto_smart_factory::RetrievePackageRequest>
{
  static const char* value()
  {
    return MD5Sum< ::auto_smart_factory::RetrievePackage >::value();
  }
  static const char* value(const ::auto_smart_factory::RetrievePackageRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::auto_smart_factory::RetrievePackageRequest> should match 
// service_traits::DataType< ::auto_smart_factory::RetrievePackage > 
template<>
struct DataType< ::auto_smart_factory::RetrievePackageRequest>
{
  static const char* value()
  {
    return DataType< ::auto_smart_factory::RetrievePackage >::value();
  }
  static const char* value(const ::auto_smart_factory::RetrievePackageRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::auto_smart_factory::RetrievePackageResponse> should match 
// service_traits::MD5Sum< ::auto_smart_factory::RetrievePackage > 
template<>
struct MD5Sum< ::auto_smart_factory::RetrievePackageResponse>
{
  static const char* value()
  {
    return MD5Sum< ::auto_smart_factory::RetrievePackage >::value();
  }
  static const char* value(const ::auto_smart_factory::RetrievePackageResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::auto_smart_factory::RetrievePackageResponse> should match 
// service_traits::DataType< ::auto_smart_factory::RetrievePackage > 
template<>
struct DataType< ::auto_smart_factory::RetrievePackageResponse>
{
  static const char* value()
  {
    return DataType< ::auto_smart_factory::RetrievePackage >::value();
  }
  static const char* value(const ::auto_smart_factory::RetrievePackageResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_RETRIEVEPACKAGE_H
