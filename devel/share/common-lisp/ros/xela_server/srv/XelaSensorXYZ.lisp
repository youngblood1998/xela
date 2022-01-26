; Auto-generated. Do not edit!


(cl:in-package xela_server-srv)


;//! \htmlinclude XelaSensorXYZ-request.msg.html

(cl:defclass <XelaSensorXYZ-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass XelaSensorXYZ-request (<XelaSensorXYZ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XelaSensorXYZ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XelaSensorXYZ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xela_server-srv:<XelaSensorXYZ-request> is deprecated: use xela_server-srv:XelaSensorXYZ-request instead.")))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <XelaSensorXYZ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:sensor-val is deprecated.  Use xela_server-srv:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'taxel-val :lambda-list '(m))
(cl:defmethod taxel-val ((m <XelaSensorXYZ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:taxel-val is deprecated.  Use xela_server-srv:taxel instead.")
  (taxel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XelaSensorXYZ-request>) ostream)
  "Serializes a message object of type '<XelaSensorXYZ-request>"
  (cl:let* ((signed (cl:slot-value msg 'sensor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'taxel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XelaSensorXYZ-request>) istream)
  "Deserializes a message object of type '<XelaSensorXYZ-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XelaSensorXYZ-request>)))
  "Returns string type for a service object of type '<XelaSensorXYZ-request>"
  "xela_server/XelaSensorXYZRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorXYZ-request)))
  "Returns string type for a service object of type 'XelaSensorXYZ-request"
  "xela_server/XelaSensorXYZRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XelaSensorXYZ-request>)))
  "Returns md5sum for a message object of type '<XelaSensorXYZ-request>"
  "2f5e77e17dc96027c90e428d83f92b92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XelaSensorXYZ-request)))
  "Returns md5sum for a message object of type 'XelaSensorXYZ-request"
  "2f5e77e17dc96027c90e428d83f92b92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XelaSensorXYZ-request>)))
  "Returns full string definition for message of type '<XelaSensorXYZ-request>"
  (cl:format cl:nil "int16 sensor~%int16 taxel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XelaSensorXYZ-request)))
  "Returns full string definition for message of type 'XelaSensorXYZ-request"
  (cl:format cl:nil "int16 sensor~%int16 taxel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XelaSensorXYZ-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XelaSensorXYZ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'XelaSensorXYZ-request
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':taxel (taxel msg))
))
;//! \htmlinclude XelaSensorXYZ-response.msg.html

(cl:defclass <XelaSensorXYZ-response> (roslisp-msg-protocol:ros-message)
  ((values
    :reader values
    :initarg :values
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass XelaSensorXYZ-response (<XelaSensorXYZ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XelaSensorXYZ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XelaSensorXYZ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xela_server-srv:<XelaSensorXYZ-response> is deprecated: use xela_server-srv:XelaSensorXYZ-response instead.")))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <XelaSensorXYZ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xela_server-srv:values-val is deprecated.  Use xela_server-srv:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XelaSensorXYZ-response>) ostream)
  "Serializes a message object of type '<XelaSensorXYZ-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XelaSensorXYZ-response>) istream)
  "Deserializes a message object of type '<XelaSensorXYZ-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XelaSensorXYZ-response>)))
  "Returns string type for a service object of type '<XelaSensorXYZ-response>"
  "xela_server/XelaSensorXYZResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorXYZ-response)))
  "Returns string type for a service object of type 'XelaSensorXYZ-response"
  "xela_server/XelaSensorXYZResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XelaSensorXYZ-response>)))
  "Returns md5sum for a message object of type '<XelaSensorXYZ-response>"
  "2f5e77e17dc96027c90e428d83f92b92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XelaSensorXYZ-response)))
  "Returns md5sum for a message object of type 'XelaSensorXYZ-response"
  "2f5e77e17dc96027c90e428d83f92b92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XelaSensorXYZ-response>)))
  "Returns full string definition for message of type '<XelaSensorXYZ-response>"
  (cl:format cl:nil "uint32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XelaSensorXYZ-response)))
  "Returns full string definition for message of type 'XelaSensorXYZ-response"
  (cl:format cl:nil "uint32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XelaSensorXYZ-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XelaSensorXYZ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'XelaSensorXYZ-response
    (cl:cons ':values (values msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'XelaSensorXYZ)))
  'XelaSensorXYZ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'XelaSensorXYZ)))
  'XelaSensorXYZ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XelaSensorXYZ)))
  "Returns string type for a service object of type '<XelaSensorXYZ>"
  "xela_server/XelaSensorXYZ")