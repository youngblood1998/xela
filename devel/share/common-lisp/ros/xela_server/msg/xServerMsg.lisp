; Auto-generated. Do not edit!


(cl:in-package xela_server-msg)


;//! \htmlinclude xServerMsg.msg.html

(cl:defclass <xServerMsg> (roslisp-msg-protocol:ros-message)
  ((sensor
    :reader sensor
    :initarg :sensor
    :type cl:fixnum
    :initform 0)
   (taxel
    :reader taxel
    :initarg :taxel
    :type cl:fixnum
    :initform 0)
   (xyz
    :reader xyz
    :initarg :xyz
    :type xela_server-msg:xSensorData
    :initform (cl:make-instance 'xela_server-msg:xSensorData)))
)

(cl:defclass xServerMsg (<xServerMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xServerMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xServerMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xela_server-msg:<xServerMsg> is deprecated: use xela_server-msg:xServerMsg instead.")))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <xServerMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-msg:sensor-val is deprecated.  Use xela_server-msg:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'taxel-val :lambda-list '(m))
(cl:defmethod taxel-val ((m <xServerMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-msg:taxel-val is deprecated.  Use xela_server-msg:taxel instead.")
  (taxel m))

(cl:ensure-generic-function 'xyz-val :lambda-list '(m))
(cl:defmethod xyz-val ((m <xServerMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-msg:xyz-val is deprecated.  Use xela_server-msg:xyz instead.")
  (xyz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xServerMsg>) ostream)
  "Serializes a message object of type '<xServerMsg>"
  (cl:let* ((signed (cl:slot-value msg 'sensor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'taxel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'xyz) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xServerMsg>) istream)
  "Deserializes a message object of type '<xServerMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taxel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'xyz) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xServerMsg>)))
  "Returns string type for a message object of type '<xServerMsg>"
  "xela_server/xServerMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xServerMsg)))
  "Returns string type for a message object of type 'xServerMsg"
  "xela_server/xServerMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xServerMsg>)))
  "Returns md5sum for a message object of type '<xServerMsg>"
  "87af96ce27144738864aad5bfffc4da7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xServerMsg)))
  "Returns md5sum for a message object of type 'xServerMsg"
  "87af96ce27144738864aad5bfffc4da7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xServerMsg>)))
  "Returns full string definition for message of type '<xServerMsg>"
  (cl:format cl:nil "int16 sensor~%int16 taxel~%xSensorData xyz~%================================================================================~%MSG: xela_server/xSensorData~%uint32 x~%uint32 y~%uint32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xServerMsg)))
  "Returns full string definition for message of type 'xServerMsg"
  (cl:format cl:nil "int16 sensor~%int16 taxel~%xSensorData xyz~%================================================================================~%MSG: xela_server/xSensorData~%uint32 x~%uint32 y~%uint32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xServerMsg>))
  (cl:+ 0
     2
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'xyz))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xServerMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'xServerMsg
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':taxel (taxel msg))
    (cl:cons ':xyz (xyz msg))
))
