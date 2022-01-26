;; Auto-generated. Do not edit!


(when (boundp 'xela_server::XelaSensorY)
  (if (not (find-package "XELA_SERVER"))
    (make-package "XELA_SERVER"))
  (shadow 'XelaSensorY (find-package "XELA_SERVER")))
(unless (find-package "XELA_SERVER::XELASENSORY")
  (make-package "XELA_SERVER::XELASENSORY"))
(unless (find-package "XELA_SERVER::XELASENSORYREQUEST")
  (make-package "XELA_SERVER::XELASENSORYREQUEST"))
(unless (find-package "XELA_SERVER::XELASENSORYRESPONSE")
  (make-package "XELA_SERVER::XELASENSORYRESPONSE"))

(in-package "ROS")





(defclass xela_server::XelaSensorYRequest
  :super ros::object
  :slots (_sensor _taxel ))

(defmethod xela_server::XelaSensorYRequest
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

(defclass xela_server::XelaSensorYResponse
  :super ros::object
  :slots (_value ))

(defmethod xela_server::XelaSensorYResponse
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

(defclass xela_server::XelaSensorY
  :super ros::object
  :slots ())

(setf (get xela_server::XelaSensorY :md5sum-) "fc5714e73aa3fe2b97b854cd8a61a925")
(setf (get xela_server::XelaSensorY :datatype-) "xela_server/XelaSensorY")
(setf (get xela_server::XelaSensorY :request) xela_server::XelaSensorYRequest)
(setf (get xela_server::XelaSensorY :response) xela_server::XelaSensorYResponse)

(defmethod xela_server::XelaSensorYRequest
  (:response () (instance xela_server::XelaSensorYResponse :init)))

(setf (get xela_server::XelaSensorYRequest :md5sum-) "fc5714e73aa3fe2b97b854cd8a61a925")
(setf (get xela_server::XelaSensorYRequest :datatype-) "xela_server/XelaSensorYRequest")
(setf (get xela_server::XelaSensorYRequest :definition-)
      "int16 sensor
int16 taxel
---
uint32 value
")

(setf (get xela_server::XelaSensorYResponse :md5sum-) "fc5714e73aa3fe2b97b854cd8a61a925")
(setf (get xela_server::XelaSensorYResponse :datatype-) "xela_server/XelaSensorYResponse")
(setf (get xela_server::XelaSensorYResponse :definition-)
      "int16 sensor
int16 taxel
---
uint32 value
")



(provide :xela_server/XelaSensorY "fc5714e73aa3fe2b97b854cd8a61a925")


