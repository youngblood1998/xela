; Auto-generated. Do not edit!


(cl:in-package xela_server-srv)


;//! \htmlinclude XelaSensorStream-request.msg.html

(cl:defclass <XelaSensorStream-request> (roslisp-msg-protocol:ros-message)
  ((sensor
    :reader sensor
    :initarg :sensor
    :type cl:fixnum
    :initform 0))
)

(cl:defclass XelaSensorStream-request (<XelaSensorStream-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XelaSensorStream-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XelaSensorStream-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xela_server-srv:<XelaSensorStream-request> is deprecated: use xela_server-srv:XelaSensorStream-request instead.")))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <XelaSensorStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:sensor-val is deprecated.  Use xela_server-srv:sensor instead.")
  (sensor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XelaSensorStream-request>) ostream)
  "Serializes a message object of type '<XelaSensorStream-request>"
  (cl:let* ((signed (cl:slot-value msg 'sensor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XelaSensorStream-request>) istream)
  "Deserializes a message object of type '<XelaSensorStream-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XelaSensorStream-request>)))
  "Returns string type for a service object of type '<XelaSensorStream-request>"
  "xela_server/XelaSensorStreamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorStream-request)))
  "Returns string type for a service object of type 'XelaSensorStream-request"
  "xela_server/XelaSensorStreamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XelaSensorStream-request>)))
  "Returns md5sum for a message object of type '<XelaSensorStream-request>"
  "418a22b0f7ffc7c2608fbc4b499d5ce5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XelaSensorStream-request)))
  "Returns md5sum for a message object of type 'XelaSensorStream-request"
  "418a22b0f7ffc7c2608fbc4b499d5ce5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XelaSensorStream-request>)))
  "Returns full string definition for message of type '<XelaSensorStream-request>"
  (cl:format cl:nil "int16 sensor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XelaSensorStream-request)))
  "Returns full string definition for message of type 'XelaSensorStream-request"
  (cl:format cl:nil "int16 sensor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XelaSensorStream-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XelaSensorStream-request>))
  "Converts a ROS message object to a list"
  (cl:list 'XelaSensorStream-request
    (cl:cons ':sensor (sensor msg))
))
;//! \htmlinclude XelaSensorStream-response.msg.html

(cl:defclass <XelaSensorStream-response> (roslisp-msg-protocol:ros-message)
  ((xyz
    :reader xyz
    :initarg :xyz
    :type (cl:vector xela_server-msg:SensPoint)
   :initform (cl:make-array 0 :element-type 'xela_server-msg:SensPoint :initial-element (cl:make-instance 'xela_server-msg:SensPoint))))
)

(cl:defclass XelaSensorStream-response (<XelaSensorStream-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XelaSensorStream-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XelaSensorStream-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xela_server-srv:<XelaSensorStream-response> is deprecated: use xela_server-srv:XelaSensorStream-response instead.")))

(cl:ensure-generic-function 'xyz-val :lambda-list '(m))
(cl:defmethod xyz-val ((m <XelaSensorStream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:xyz-val is deprecated.  Use xela_server-srv:xyz instead.")
  (xyz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XelaSensorStream-response>) ostream)
  "Serializes a message object of type '<XelaSensorStream-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'xyz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'xyz))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XelaSensorStream-response>) istream)
  "Deserializes a message object of type '<XelaSensorStream-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'xyz) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'xyz)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'xela_server-msg:SensPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XelaSensorStream-response>)))
  "Returns string type for a service object of type '<XelaSensorStream-response>"
  "xela_server/XelaSensorStreamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorStream-response)))
  "Returns string type for a service object of type 'XelaSensorStream-response"
  "xela_server/XelaSensorStreamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XelaSensorStream-response>)))
  "Returns md5sum for a message object of type '<XelaSensorStream-response>"
  "418a22b0f7ffc7c2608fbc4b499d5ce5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XelaSensorStream-response)))
  "Returns md5sum for a message object of type 'XelaSensorStream-response"
  "418a22b0f7ffc7c2608fbc4b499d5ce5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XelaSensorStream-response>)))
  "Returns full string definition for message of type '<XelaSensorStream-response>"
  (cl:format cl:nil "SensPoint[] xyz~%~%================================================================================~%MSG: xela_server/SensPoint~%uint32 x~%uint32 y~%uint32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XelaSensorStream-response)))
  "Returns full string definition for message of type 'XelaSensorStream-response"
  (cl:format cl:nil "SensPoint[] xyz~%~%================================================================================~%MSG: xela_server/SensPoint~%uint32 x~%uint32 y~%uint32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XelaSensorStream-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'xyz) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XelaSensorStream-response>))
  "Converts a ROS message object to a list"
  (cl:list 'XelaSensorStream-response
    (cl:cons ':xyz (xyz msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'XelaSensorStream)))
  'XelaSensorStream-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'XelaSensorStream)))
  'XelaSensorStream-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorStream)))
  "Returns string type for a service object of type '<XelaSensorStream>"
  "xela_server/XelaSensorStream")