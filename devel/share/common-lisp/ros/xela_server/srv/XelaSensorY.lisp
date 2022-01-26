; Auto-generated. Do not edit!


(cl:in-package xela_server-srv)


;//! \htmlinclude XelaSensorY-request.msg.html

(cl:defclass <XelaSensorY-request> (roslisp-msg-protocol:ros-message)
  ((sensor
    :reader sensor
    :initarg :sensor
    :type cl:fixnum
    :initform 0)
   (taxel
    :reader taxel
    :initarg :taxel
    :type cl:fixnum
    :initform 0))
)

(cl:defclass XelaSensorY-request (<XelaSensorY-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XelaSensorY-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XelaSensorY-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xela_server-srv:<XelaSensorY-request> is deprecated: use xela_server-srv:XelaSensorY-request instead.")))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <XelaSensorY-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:sensor-val is deprecated.  Use xela_server-srv:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'taxel-val :lambda-list '(m))
(cl:defmethod taxel-val ((m <XelaSensorY-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:taxel-val is deprecated.  Use xela_server-srv:taxel instead.")
  (taxel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XelaSensorY-request>) ostream)
  "Serializes a message object of type '<XelaSensorY-request>"
  (cl:let* ((signed (cl:slot-value msg 'sensor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'taxel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XelaSensorY-request>) istream)
  "Deserializes a message object of type '<XelaSensorY-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taxel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XelaSensorY-request>)))
  "Returns string type for a service object of type '<XelaSensorY-request>"
  "xela_server/XelaSensorYRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorY-request)))
  "Returns string type for a service object of type 'XelaSensorY-request"
  "xela_server/XelaSensorYRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XelaSensorY-request>)))
  "Returns md5sum for a message object of type '<XelaSensorY-request>"
  "fc5714e73aa3fe2b97b854cd8a61a925")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XelaSensorY-request)))
  "Returns md5sum for a message object of type 'XelaSensorY-request"
  "fc5714e73aa3fe2b97b854cd8a61a925")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XelaSensorY-request>)))
  "Returns full string definition for message of type '<XelaSensorY-request>"
  (cl:format cl:nil "int16 sensor~%int16 taxel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XelaSensorY-request)))
  "Returns full string definition for message of type 'XelaSensorY-request"
  (cl:format cl:nil "int16 sensor~%int16 taxel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XelaSensorY-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XelaSensorY-request>))
  "Converts a ROS message object to a list"
  (cl:list 'XelaSensorY-request
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':taxel (taxel msg))
))
;//! \htmlinclude XelaSensorY-response.msg.html

(cl:defclass <XelaSensorY-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass XelaSensorY-response (<XelaSensorY-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XelaSensorY-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XelaSensorY-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xela_server-srv:<XelaSensorY-response> is deprecated: use xela_server-srv:XelaSensorY-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <XelaSensorY-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:value-val is deprecated.  Use xela_server-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XelaSensorY-response>) ostream)
  "Serializes a message object of type '<XelaSensorY-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XelaSensorY-response>) istream)
  "Deserializes a message object of type '<XelaSensorY-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XelaSensorY-response>)))
  "Returns string type for a service object of type '<XelaSensorY-response>"
  "xela_server/XelaSensorYResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorY-response)))
  "Returns string type for a service object of type 'XelaSensorY-response"
  "xela_server/XelaSensorYResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XelaSensorY-response>)))
  "Returns md5sum for a message object of type '<XelaSensorY-response>"
  "fc5714e73aa3fe2b97b854cd8a61a925")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XelaSensorY-response)))
  "Returns md5sum for a message object of type 'XelaSensorY-response"
  "fc5714e73aa3fe2b97b854cd8a61a925")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XelaSensorY-response>)))
  "Returns full string definition for message of type '<XelaSensorY-response>"
  (cl:format cl:nil "uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XelaSensorY-response)))
  "Returns full string definition for message of type 'XelaSensorY-response"
  (cl:format cl:nil "uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XelaSensorY-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XelaSensorY-response>))
  "Converts a ROS message object to a list"
  (cl:list 'XelaSensorY-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'XelaSensorY)))
  'XelaSensorY-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'XelaSensorY)))
  'XelaSensorY-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorY)))
  "Returns string type for a service object of type '<XelaSensorY>"
  "xela_server/XelaSensorY")