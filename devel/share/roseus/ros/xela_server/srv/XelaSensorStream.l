;; Auto-generated. Do not edit!


(when (boundp 'xela_server::XelaSensorStream)
  (if (not (find-package "XELA_SERVER"))
    (make-package "XELA_SERVER"))
  (shadow 'XelaSensorStream (find-package "XELA_SERVER")))
(unless (find-package "XELA_SERVER::XELASENSORSTREAM")
  (make-package "XELA_SERVER::XELASENSORSTREAM"))
(unless (find-package "XELA_SERVER::XELASENSORSTREAMREQUEST")
  (make-package "XELA_SERVER::XELASENSORSTREAMREQUEST"))
(unless (find-package "XELA_SERVER::XELASENSORSTREAMRESPONSE")
  (make-package "XELA_SERVER::XELASENSORSTREAMRESPONSE"))

(in-package "ROS")





(defclass xela_server::XelaSensorStreamRequest
  :super ros::object
  :slots (_sensor ))

(defmethod xela_server::XelaSensorStreamRequest
  (:init
   (&key
    ((:sensor __sensor) 0)
    )
   (send-super :init)
   (setq _sensor (round __sensor))
   self)
  (:sensor
   (&optional __sensor)
   (if __sensor (setq _sensor __sensor)) _sensor)
  (:serialization-length
   ()
   (+
    ;; int16 _sensor
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _sensor
       (write-word _sensor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _sensor
     (setq _sensor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass xela_server::XelaSensorStreamResponse
  :super ros::object
  :slots (_xyz ))

(defmethod xela_server::XelaSensorStreamResponse
  (:init
   (&key
    ((:xyz __xyz) (let (r) (dotimes (i 0) (push (instance xela_server::SensPoint :init) r)) r))
    )
   (send-super :init)
   (setq _xyz __xyz)
   self)
  (:xyz
   (&rest __xyz)
   (if (keywordp (car __xyz))
       (send* _xyz __xyz)
     (progn
       (if __xyz (setq _xyz (car __xyz)))
       _xyz)))
  (:serialization-length
   ()
   (+
    ;; xela_server/SensPoint[] _xyz
    (apply #'+ (send-all _xyz :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; xela_server/SensPoint[] _xyz
     (write-long (length _xyz) s)
     (dolist (elem _xyz)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; xela_server/SensPoint[] _xyz
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _xyz (let (r) (dotimes (i n) (push (instance xela_server::SensPoint :init) r)) r))
     (dolist (elem- _xyz)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass xela_server::XelaSensorStream
  :super ros::object
  :slots ())

(setf (get xela_server::XelaSensorStream :md5sum-) "418a22b0f7ffc7c2608fbc4b499d5ce5")
(setf (get xela_server::XelaSensorStream :datatype-) "xela_server/XelaSensorStream")
(setf (get xela_server::XelaSensorStream :request) xela_server::XelaSensorStreamRequest)
(setf (get xela_server::XelaSensorStream :response) xela_server::XelaSensorStreamResponse)

(defmethod xela_server::XelaSensorStreamRequest
  (:response () (instance xela_server::XelaSensorStreamResponse :init)))

(setf (get xela_server::XelaSensorStreamRequest :md5sum-) "418a22b0f7ffc7c2608fbc4b499d5ce5")
(setf (get xela_server::XelaSensorStreamRequest :datatype-) "xela_server/XelaSensorStreamRequest")
(setf (get xela_server::XelaSensorStreamRequest :definition-)
      "int16 sensor
---
SensPoint[] xyz

================================================================================
MSG: xela_server/SensPoint
uint32 x
uint32 y
")

(setf (get xela_server::XelaSensorStreamResponse :md5sum-) "418a22b0f7ffc7c2608fbc4b499d5ce5")
(setf (get xela_server::XelaSensorStreamResponse :datatype-) "xela_server/XelaSensorStreamResponse")
(setf (get xela_server::XelaSensorStreamResponse :definition-)
      "int16 sensor
---
SensPoint[] xyz

================================================================================
MSG: xela_server/SensPoint
uint32 x
uint32 y
")



(provide :xela_server/XelaSensorStream "418a22b0f7ffc7c2608fbc4b499d5ce5")


