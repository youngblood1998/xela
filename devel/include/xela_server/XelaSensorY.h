// Generated by gencpp from file xela_server/XelaSensorY.msg
// DO NOT EDIT!


#ifndef XELA_SERVER_MESSAGE_XELASENSORY_H
#define XELA_SERVER_MESSAGE_XELASENSORY_H

#include <ros/service_traits.h>


#include <xela_server/XelaSensorYRequest.h>
#include <xela_server/XelaSensorYResponse.h>


namespace xela_server
{

struct XelaSensorY
{

typedef XelaSensorYRequest Request;
typedef XelaSensorYResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct XelaSensorY
} // namespace xela_server


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::xela_server::XelaSensorY > {
  static const char* value()
  {
    return "fc5714e73aa3fe2b97b854cd8a61a925";
  }

  static const char* value(const ::xela_server::XelaSensorY&) { return value(); }
};

template<>
struct DataType< ::xela_server::XelaSensorY > {
  static const char* value()
  {
    return "xela_server/XelaSensorY";
  }

  static const char* value(const ::xela_server::XelaSensorY&) { return value(); }
};


// service_traits::MD5Sum< ::xela_server::XelaSensorYRequest> should match 
// service_traits::MD5Sum< ::xela_server::XelaSensorY > 
template<>
struct MD5Sum< ::xela_server::XelaSensorYRequest>
{
  static const char* value()
  {
    return MD5Sum< ::xela_server::XelaSensorY >::value();
  }
  static const char* value(const ::xela_server::XelaSensorYRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::xela_server::XelaSensorYRequest> should match 
// service_traits::DataType< ::xela_server::XelaSensorY > 
template<>
struct DataType< ::xela_server::XelaSensorYRequest>
{
  static const char* value()
  {
    return DataType< ::xela_server::XelaSensorY >::value();
  }
  static const char* value(const ::xela_server::XelaSensorYRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::xela_server::XelaSensorYResponse> should match 
// service_traits::MD5Sum< ::xela_server::XelaSensorY > 
template<>
struct MD5Sum< ::xela_server::XelaSensorYResponse>
{
  static const char* value()
  {
    return MD5Sum< ::xela_server::XelaSensorY >::value();
  }
  static const char* value(const ::xela_server::XelaSensorYResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::xela_server::XelaSensorYResponse> should match 
// service_traits::DataType< ::xela_server::XelaSensorY > 
template<>
struct DataType< ::xela_server::XelaSensorYResponse>
{
  static const char* value()
  {
    return DataType< ::xela_server::XelaSensorY >::value();
  }
  static const char* value(const ::xela_server::XelaSensorYResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // XELA_SERVER_MESSAGE_XELASENSORY_H
