; Auto-generated. Do not edit!


(cl:in-package xela_server-srv)


;//! \htmlinclude XelaSensorZ-request.msg.html

(cl:defclass <XelaSensorZ-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass XelaSensorZ-request (<XelaSensorZ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XelaSensorZ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XelaSensorZ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xela_server-srv:<XelaSensorZ-request> is deprecated: use xela_server-srv:XelaSensorZ-request instead.")))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <XelaSensorZ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:sensor-val is deprecated.  Use xela_server-srv:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'taxel-val :lambda-list '(m))
(cl:defmethod taxel-val ((m <XelaSensorZ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:taxel-val is deprecated.  Use xela_server-srv:taxel instead.")
  (taxel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XelaSensorZ-request>) ostream)
  "Serializes a message object of type '<XelaSensorZ-request>"
  (cl:let* ((signed (cl:slot-value msg 'sensor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'taxel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XelaSensorZ-request>) istream)
  "Deserializes a message object of type '<XelaSensorZ-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XelaSensorZ-request>)))
  "Returns string type for a service object of type '<XelaSensorZ-request>"
  "xela_server/XelaSensorZRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorZ-request)))
  "Returns string type for a service object of type 'XelaSensorZ-request"
  "xela_server/XelaSensorZRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XelaSensorZ-request>)))
  "Returns md5sum for a message object of type '<XelaSensorZ-request>"
  "fc5714e73aa3fe2b97b854cd8a61a925")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XelaSensorZ-request)))
  "Returns md5sum for a message object of type 'XelaSensorZ-request"
  "fc5714e73aa3fe2b97b854cd8a61a925")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XelaSensorZ-request>)))
  "Returns full string definition for message of type '<XelaSensorZ-request>"
  (cl:format cl:nil "int16 sensor~%int16 taxel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XelaSensorZ-request)))
  "Returns full string definition for message of type 'XelaSensorZ-request"
  (cl:format cl:nil "int16 sensor~%int16 taxel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XelaSensorZ-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XelaSensorZ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'XelaSensorZ-request
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':taxel (taxel msg))
))
;//! \htmlinclude XelaSensorZ-response.msg.html

(cl:defclass <XelaSensorZ-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass XelaSensorZ-response (<XelaSensorZ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XelaSensorZ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XelaSensorZ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xela_server-srv:<XelaSensorZ-response> is deprecated: use xela_server-srv:XelaSensorZ-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <XelaSensorZ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:value-val is deprecated.  Use xela_server-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XelaSensorZ-response>) ostream)
  "Serializes a message object of type '<XelaSensorZ-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XelaSensorZ-response>) istream)
  "Deserializes a message object of type '<XelaSensorZ-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XelaSensorZ-response>)))
  "Returns string type for a service object of type '<XelaSensorZ-response>"
  "xela_server/XelaSensorZResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorZ-response)))
  "Returns string type for a service object of type 'XelaSensorZ-response"
  "xela_server/XelaSensorZResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XelaSensorZ-response>)))
  "Returns md5sum for a message object of type '<XelaSensorZ-response>"
  "fc5714e73aa3fe2b97b854cd8a61a925")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XelaSensorZ-response)))
  "Returns md5sum for a message object of type 'XelaSensorZ-response"
  "fc5714e73aa3fe2b97b854cd8a61a925")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XelaSensorZ-response>)))
  "Returns full string definition for message of type '<XelaSensorZ-response>"
  (cl:format cl:nil "uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XelaSensorZ-response)))
  "Returns full string definition for message of type 'XelaSensorZ-response"
  (cl:format cl:nil "uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XelaSensorZ-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XelaSensorZ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'XelaSensorZ-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'XelaSensorZ)))
  'XelaSensorZ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'XelaSensorZ)))
  'XelaSensorZ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorZ)))
  "Returns string type for a service object of type '<XelaSensorZ>"
  "xela_server/XelaSensorZ")