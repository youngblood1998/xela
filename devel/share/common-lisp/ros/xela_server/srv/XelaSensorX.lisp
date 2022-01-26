; Auto-generated. Do not edit!


(cl:in-package xela_server-srv)


;//! \htmlinclude XelaSensorX-request.msg.html

(cl:defclass <XelaSensorX-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass XelaSensorX-request (<XelaSensorX-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XelaSensorX-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XelaSensorX-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xela_server-srv:<XelaSensorX-request> is deprecated: use xela_server-srv:XelaSensorX-request instead.")))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <XelaSensorX-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:sensor-val is deprecated.  Use xela_server-srv:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'taxel-val :lambda-list '(m))
(cl:defmethod taxel-val ((m <XelaSensorX-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:taxel-val is deprecated.  Use xela_server-srv:taxel instead.")
  (taxel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XelaSensorX-request>) ostream)
  "Serializes a message object of type '<XelaSensorX-request>"
  (cl:let* ((signed (cl:slot-value msg 'sensor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'taxel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XelaSensorX-request>) istream)
  "Deserializes a message object of type '<XelaSensorX-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XelaSensorX-request>)))
  "Returns string type for a service object of type '<XelaSensorX-request>"
  "xela_server/XelaSensorXRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorX-request)))
  "Returns string type for a service object of type 'XelaSensorX-request"
  "xela_server/XelaSensorXRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XelaSensorX-request>)))
  "Returns md5sum for a message object of type '<XelaSensorX-request>"
  "fc5714e73aa3fe2b97b854cd8a61a925")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XelaSensorX-request)))
  "Returns md5sum for a message object of type 'XelaSensorX-request"
  "fc5714e73aa3fe2b97b854cd8a61a925")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XelaSensorX-request>)))
  "Returns full string definition for message of type '<XelaSensorX-request>"
  (cl:format cl:nil "int16 sensor~%int16 taxel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XelaSensorX-request)))
  "Returns full string definition for message of type 'XelaSensorX-request"
  (cl:format cl:nil "int16 sensor~%int16 taxel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XelaSensorX-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XelaSensorX-request>))
  "Converts a ROS message object to a list"
  (cl:list 'XelaSensorX-request
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':taxel (taxel msg))
))
;//! \htmlinclude XelaSensorX-response.msg.html

(cl:defclass <XelaSensorX-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass XelaSensorX-response (<XelaSensorX-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XelaSensorX-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XelaSensorX-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xela_server-srv:<XelaSensorX-response> is deprecated: use xela_server-srv:XelaSensorX-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <XelaSensorX-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:value-val is deprecated.  Use xela_server-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XelaSensorX-response>) ostream)
  "Serializes a message object of type '<XelaSensorX-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XelaSensorX-response>) istream)
  "Deserializes a message object of type '<XelaSensorX-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XelaSensorX-response>)))
  "Returns string type for a service object of type '<XelaSensorX-response>"
  "xela_server/XelaSensorXResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorX-response)))
  "Returns string type for a service object of type 'XelaSensorX-response"
  "xela_server/XelaSensorXResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XelaSensorX-response>)))
  "Returns md5sum for a message object of type '<XelaSensorX-response>"
  "fc5714e73aa3fe2b97b854cd8a61a925")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XelaSensorX-response)))
  "Returns md5sum for a message object of type 'XelaSensorX-response"
  "fc5714e73aa3fe2b97b854cd8a61a925")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XelaSensorX-response>)))
  "Returns full string definition for message of type '<XelaSensorX-response>"
  (cl:format cl:nil "uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XelaSensorX-response)))
  "Returns full string definition for message of type 'XelaSensorX-response"
  (cl:format cl:nil "uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XelaSensorX-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XelaSensorX-response>))
  "Converts a ROS message object to a list"
  (cl:list 'XelaSensorX-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'XelaSensorX)))
  'XelaSensorX-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'XelaSensorX)))
  'XelaSensorX-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorX)))
  "Returns string type for a service object of type '<XelaSensorX>"
  "xela_server/XelaSensorX")