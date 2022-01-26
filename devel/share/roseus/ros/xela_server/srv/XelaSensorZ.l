;; Auto-generated. Do not edit!


(when (boundp 'xela_server::XelaSensorZ)
  (if (not (find-package "XELA_SERVER"))
    (make-package "XELA_SERVER"))
  (shadow 'XelaSensorZ (find-package "XELA_SERVER")))
(unless (find-package "XELA_SERVER::XELASENSORZ")
  (make-package "XELA_SERVER::XELASENSORZ"))
(unless (find-package "XELA_SERVER::XELASENSORZREQUEST")
  (make-package "XELA_SERVER::XELASENSORZREQUEST"))
(unless (find-package "XELA_SERVER::XELASENSORZRESPONSE")
  (make-package "XELA_SERVER::XELASENSORZRESPONSE"))

(in-package "ROS")





(defclass xela_server::XelaSensorZRequest
  :super ros::object
  :slots (_sensor _taxel ))

(defmethod xela_server::XelaSensorZRequest
  (:init
   (&key
    ((:sensor __sensor) 0)
    ((:taxel __taxel) 0)
    )
   (send-super :init)
   (setq _sensor (round __sensor))
   (setq _taxel (round __taxel))
   self)
  (:sensor
   (&optional __sensor)
   (if __sensor (setq _sensor __sensor)) _sensor)
  (:taxel
   (&optional __taxel)
   (if __taxel (setq _taxel __taxel)) _taxel)
  (:serialization-length
   ()
   (+
    ;; int16 _sensor
    2
    ;; int16 _taxel
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _sensor
       (write-word _sensor s)
     ;; int16 _taxel
       (write-word _taxel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _sensor
     (setq _sensor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _taxel
     (setq _taxel (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass xela_server::XelaSensorZResponse
  :super ros::object
  :slots (_value ))

(defmethod xela_server::XelaSensorZResponse
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass xela_server::XelaSensorZ
  :super ros::object
  :slots ())

(setf (get xela_server::XelaSensorZ :md5sum-) "fc5714e73aa3fe2b97b854cd8a61a925")
(setf (get xela_server::XelaSensorZ :datatype-) "xela_server/XelaSensorZ")
(setf (get xela_server::XelaSensorZ :request) xela_server::XelaSensorZRequest)
(setf (get xela_server::XelaSensorZ :response) xela_server::XelaSensorZResponse)

(defmethod xela_server::XelaSensorZRequest
  (:response () (instance xela_server::XelaSensorZResponse :init)))

(setf (get xela_server::XelaSensorZRequest :md5sum-) "fc5714e73aa3fe2b97b854cd8a61a925")
(setf (get xela_server::XelaSensorZRequest :datatype-) "xela_server/XelaSensorZRequest")
(setf (get xela_server::XelaSensorZRequest :definition-)
      "int16 sensor
int16 taxel
---
uint32 value
")

(setf (get xela_server::XelaSensorZResponse :md5sum-) "fc5714e73aa3fe2b97b854cd8a61a925")
(setf (get xela_server::XelaSensorZResponse :datatype-) "xela_server/XelaSensorZResponse")
(setf (get xela_server::XelaSensorZResponse :definition-)
      "int16 sensor
int16 taxel
---
uint32 value
")



(provide :xela_server/XelaSensorZ "fc5714e73aa3fe2b97b854cd8a61a925")


