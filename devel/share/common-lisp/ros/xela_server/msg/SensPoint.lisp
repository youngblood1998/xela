; Auto-generated. Do not edit!


(cl:in-package xela_server-msg)


;//! \htmlinclude SensPoint.msg.html

(cl:defclass <SensPoint> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (z
    :reader z
    :initarg :z
    :type cl:integer
    :initform 0))
)

(cl:defclass SensPoint (<SensPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xela_server-msg:<SensPoint> is deprecated: use xela_server-msg:SensPoint instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SensPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-msg:x-val is deprecated.  Use xela_server-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SensPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-msg:y-val is deprecated.  Use xela_server-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <SensPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-msg:z-val is deprecated.  Use xela_server-msg:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensPoint>) ostream)
  "Serializes a message object of type '<SensPoint>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'z)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensPoint>) istream)
  "Deserializes a message object of type '<SensPoint>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'z)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensPoint>)))
  "Returns string type for a message object of type '<SensPoint>"
  "xela_server/SensPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensPoint)))
  "Returns string type for a message object of type 'SensPoint"
  "xela_server/SensPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensPoint>)))
  "Returns md5sum for a message object of type '<SensPoint>"
  "bfde2953ee46d97d36a711ef3cbc85f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensPoint)))
  "Returns md5sum for a message object of type 'SensPoint"
  "bfde2953ee46d97d36a711ef3cbc85f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensPoint>)))
  "Returns full string definition for message of type '<SensPoint>"
  (cl:format cl:nil "uint32 x~%uint32 y~%uint32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensPoint)))
  "Returns full string definition for message of type 'SensPoint"
  (cl:format cl:nil "uint32 x~%uint32 y~%uint32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensPoint>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'SensPoint
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
