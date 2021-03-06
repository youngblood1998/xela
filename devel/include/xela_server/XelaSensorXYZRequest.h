// Generated by gencpp from file xela_server/XelaSensorXYZRequest.msg
// DO NOT EDIT!


#ifndef XELA_SERVER_MESSAGE_XELASENSORXYZREQUEST_H
#define XELA_SERVER_MESSAGE_XELASENSORXYZREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace xela_server
{
template <class ContainerAllocator>
struct XelaSensorXYZRequest_
{
  typedef XelaSensorXYZRequest_<ContainerAllocator> Type;

  XelaSensorXYZRequest_()
    : sensor(0)
    , taxel(0)  {
    }
  XelaSensorXYZRequest_(const ContainerAllocator& _alloc)
    : sensor(0)
    , taxel(0)  {
  (void)_alloc;
    }



   typedef int16_t _sensor_type;
  _sensor_type sensor;

   typedef int16_t _taxel_type;
  _taxel_type taxel;





  typedef boost::shared_ptr< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> const> ConstPtr;

}; // struct XelaSensorXYZRequest_

typedef ::xela_server::XelaSensorXYZRequest_<std::allocator<void> > XelaSensorXYZRequest;

typedef boost::shared_ptr< ::xela_server::XelaSensorXYZRequest > XelaSensorXYZRequestPtr;
typedef boost::shared_ptr< ::xela_server::XelaSensorXYZRequest const> XelaSensorXYZRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace xela_server

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'xela_server': ['/home/jay/xela/src/xela_server/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "abc4ffca4d7aa5f898e56c9536039266";
  }

  static const char* value(const ::xela_server::XelaSensorXYZRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xabc4ffca4d7aa5f8ULL;
  static const uint64_t static_value2 = 0x98e56c9536039266ULL;
};

template<class ContainerAllocator>
struct DataType< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "xela_server/XelaSensorXYZRequest";
  }

  static const char* value(const ::xela_server::XelaSensorXYZRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 sensor\n\
int16 taxel\n\
";
  }

  static const char* value(const ::xela_server::XelaSensorXYZRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sensor);
      stream.next(m.taxel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct XelaSensorXYZRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::xela_server::XelaSensorXYZRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::xela_server::XelaSensorXYZRequest_<ContainerAllocator>& v)
  {
    s << indent << "sensor: ";
    Printer<int16_t>::stream(s, indent + "  ", v.sensor);
    s << indent << "taxel: ";
    Printer<int16_t>::stream(s, indent + "  ", v.taxel);
  }
};

} // namespace message_operations
} // namespace ros

#endif // XELA_SERVER_MESSAGE_XELASENSORXYZREQUEST_H
