// Generated by gencpp from file auto_smart_factory/GetWarehouseConfig.msg
// DO NOT EDIT!


#ifndef AUTO_SMART_FACTORY_MESSAGE_GETWAREHOUSECONFIG_H
#define AUTO_SMART_FACTORY_MESSAGE_GETWAREHOUSECONFIG_H

#include <ros/service_traits.h>


#include <auto_smart_factory/GetWarehouseConfigRequest.h>
#include <auto_smart_factory/GetWarehouseConfigResponse.h>


namespace auto_smart_factory
{

struct GetWarehouseConfig
{

typedef GetWarehouseConfigRequest Request;
typedef GetWarehouseConfigResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetWarehouseConfig
} // namespace auto_smart_factory


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::auto_smart_factory::GetWarehouseConfig > {
  static const char* value()
  {
    return "bf9e28ae61752bbb3424c5bfc632987f";
  }

  static const char* value(const ::auto_smart_factory::GetWarehouseConfig&) { return value(); }
};

template<>
struct DataType< ::auto_smart_factory::GetWarehouseConfig > {
  static const char* value()
  {
    return "auto_smart_factory/GetWarehouseConfig";
  }

  static const char* value(const ::auto_smart_factory::GetWarehouseConfig&) { return value(); }
};


// service_traits::MD5Sum< ::auto_smart_factory::GetWarehouseConfigRequest> should match 
// service_traits::MD5Sum< ::auto_smart_factory::GetWarehouseConfig > 
template<>
struct MD5Sum< ::auto_smart_factory::GetWarehouseConfigRequest>
{
  static const char* value()
  {
    return MD5Sum< ::auto_smart_factory::GetWarehouseConfig >::value();
  }
  static const char* value(const ::auto_smart_factory::GetWarehouseConfigRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::auto_smart_factory::GetWarehouseConfigRequest> should match 
// service_traits::DataType< ::auto_smart_factory::GetWarehouseConfig > 
template<>
struct DataType< ::auto_smart_factory::GetWarehouseConfigRequest>
{
  static const char* value()
  {
    return DataType< ::auto_smart_factory::GetWarehouseConfig >::value();
  }
  static const char* value(const ::auto_smart_factory::GetWarehouseConfigRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::auto_smart_factory::GetWarehouseConfigResponse> should match 
// service_traits::MD5Sum< ::auto_smart_factory::GetWarehouseConfig > 
template<>
struct MD5Sum< ::auto_smart_factory::GetWarehouseConfigResponse>
{
  static const char* value()
  {
    return MD5Sum< ::auto_smart_factory::GetWarehouseConfig >::value();
  }
  static const char* value(const ::auto_smart_factory::GetWarehouseConfigResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::auto_smart_factory::GetWarehouseConfigResponse> should match 
// service_traits::DataType< ::auto_smart_factory::GetWarehouseConfig > 
template<>
struct DataType< ::auto_smart_factory::GetWarehouseConfigResponse>
{
  static const char* value()
  {
    return DataType< ::auto_smart_factory::GetWarehouseConfig >::value();
  }
  static const char* value(const ::auto_smart_factory::GetWarehouseConfigResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AUTO_SMART_FACTORY_MESSAGE_GETWAREHOUSECONFIG_H
