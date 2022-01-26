;; Auto-generated. Do not edit!


(when (boundp 'xela_server::XelaSensorXY)
  (if (not (find-package "XELA_SERVER"))
    (make-package "XELA_SERVER"))
  (shadow 'XelaSensorXY (find-package "XELA_SERVER")))
(unless (find-package "XELA_SERVER::XELASENSORXY")
  (make-package "XELA_SERVER::XELASENSORXY"))
(unless (find-package "XELA_SERVER::XELASENSORXYREQUEST")
  (make-package "XELA_SERVER::XELASENSORXYREQUEST"))
(unless (find-package "XELA_SERVER::XELASENSORXYRESPONSE")
  (make-package "XELA_SERVER::XELASENSORXYRESPONSE"))

(in-package "ROS")





(defclass xela_server::XelaSensorXYRequest
  :super ros::object
  :slots (_sensor _taxel ))

(defmethod xela_server::XelaSensorXYRequest
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

(defclass xela_server::XelaSensorXYResponse
  :super ros::object
  :slots (_values ))

(defmethod xela_server::XelaSensorXYResponse
  (:init
   (&key
    ((:values __values) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _values __values)
   self)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; uint32[] _values
    (* 4    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (write-long (elt _values i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass xela_server::XelaSensorXY
  :super ros::object
  :slots ())

(setf (get xela_server::XelaSensorXY :md5sum-) "2f5e77e17dc96027c90e428d83f92b92")
(setf (get xela_server::XelaSensorXY :datatype-) "xela_server/XelaSensorXY")
(setf (get xela_server::XelaSensorXY :request) xela_server::XelaSensorXYRequest)
(setf (get xela_server::XelaSensorXY :response) xela_server::XelaSensorXYResponse)

(defmethod xela_server::XelaSensorXYRequest
  (:response () (instance xela_server::XelaSensorXYResponse :init)))

(setf (get xela_server::XelaSensorXYRequest :md5sum-) "2f5e77e17dc96027c90e428d83f92b92")
(setf (get xela_server::XelaSensorXYRequest :datatype-) "xela_server/XelaSensorXYRequest")
(setf (get xela_server::XelaSensorXYRequest :definition-)
      "int16 sensor
int16 taxel
---
uint32[] values
")

(setf (get xela_server::XelaSensorXYResponse :md5sum-) "2f5e77e17dc96027c90e428d83f92b92")
(setf (get xela_server::XelaSensorXYResponse :datatype-) "xela_server/XelaSensorXYResponse")
(setf (get xela_server::XelaSensorXYResponse :definition-)
      "int16 sensor
int16 taxel
---
uint32[] values
")



(provide :xela_server/XelaSensorXY "2f5e77e17dc96027c90e428d83f92b92")


