// Generated by gencpp from file auto_smart_factory/NewPackageGenerator.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_NEWPACKAGEGENERATOR_H
#define AUTO_SMART_FACTORY_MESSAGE_NEWPACKAGEGENERATOR_H

#include <ros/service_traits.h>


#include <auto_smart_factory/NewPackageGeneratorRequest.h>
#include <auto_smart_factory/NewPackageGeneratorResponse.h>


namespace auto_smart_factory
{

struct NewPackageGenerator
{

typedef NewPackageGeneratorRequest Request;
typedef NewPackageGeneratorResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct NewPackageGenerator
} // namespace auto_smart_factory


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::auto_smart_factory::NewPackageGenerator > {
  static const char* value()
  {
    return "e07a595ba2d638991b2afc427b4d8daa";
  }

  static const char* value(const ::auto_smart_factory::NewPackageGenerator&) { return value(); }
};

template<>
struct DataType< ::auto_smart_factory::NewPackageGenerator > {
  static const char* value()
  {
    return "auto_smart_factory/NewPackageGenerator";
  }

  static const char* value(const ::auto_smart_factory::NewPackageGenerator&) { return value(); }
};


// service_traits::MD5Sum< ::auto_smart_factory::NewPackageGeneratorRequest> should match 
// service_traits::MD5Sum< ::auto_smart_factory::NewPackageGenerator > 
template<>
struct MD5Sum< ::auto_smart_factory::NewPackageGeneratorRequest>
{
  static const char* value()
  {
    return MD5Sum< ::auto_smart_factory::NewPackageGenerator >::value();
  }
  static const char* value(const ::auto_smart_factory::NewPackageGeneratorRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::auto_smart_factory::NewPackageGeneratorRequest> should match 
// service_traits::DataType< ::auto_smart_factory::NewPackageGenerator > 
template<>
struct DataType< ::auto_smart_factory::NewPackageGeneratorRequest>
{
  static const char* value()
  {
    return DataType< ::auto_smart_factory::NewPackageGenerator >::value();
  }
  static const char* value(const ::auto_smart_factory::NewPackageGeneratorRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::auto_smart_factory::NewPackageGeneratorResponse> should match 
// service_traits::MD5Sum< ::auto_smart_factory::NewPackageGenerator > 
template<>
struct MD5Sum< ::auto_smart_factory::NewPackageGeneratorResponse>
{
  static const char* value()
  {
    return MD5Sum< ::auto_smart_factory::NewPackageGenerator >::value();
  }
  static const char* value(const ::auto_smart_factory::NewPackageGeneratorResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::auto_smart_factory::NewPackageGeneratorResponse> should match 
// service_traits::DataType< ::auto_smart_factory::NewPackageGenerator > 
template<>
struct DataType< ::auto_smart_factory::NewPackageGeneratorResponse>
{
  static const char* value()
  {
    return DataType< ::auto_smart_factory::NewPackageGenerator >::value();
  }
  static const char* value(const ::auto_smart_factory::NewPackageGeneratorResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_NEWPACKAGEGENERATOR_H
