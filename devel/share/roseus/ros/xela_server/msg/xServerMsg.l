;; Auto-generated. Do not edit!


(when (boundp 'xela_server::xServerMsg)
  (if (not (find-package "XELA_SERVER"))
    (make-package "XELA_SERVER"))
  (shadow 'xServerMsg (find-package "XELA_SERVER")))
(unless (find-package "XELA_SERVER::XSERVERMSG")
  (make-package "XELA_SERVER::XSERVERMSG"))

(in-package "ROS")
;;//! \htmlinclude xServerMsg.msg.html


(defclass xela_server::xServerMsg
  :super ros::object
  :slots (_sensor _taxel _xyz ))

(defmethod xela_server::xServerMsg
  (:init
   (&key
    ((:sensor __sensor) 0)
    ((:taxel __taxel) 0)
    ((:xyz __xyz) (instance xela_server::xSensorData :init))
    )
   (send-super :init)
   (setq _sensor (round __sensor))
   (setq _taxel (round __taxel))
   (setq _xyz __xyz)
   self)
  (:sensor
   (&optional __sensor)
   (if __sensor (setq _sensor __sensor)) _sensor)
  (:taxel
   (&optional __taxel)
   (if __taxel (setq _taxel __taxel)) _taxel)
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
    ;; int16 _sensor
    2
    ;; int16 _taxel
    2
    ;; xela_server/xSensorData _xyz
    (send _xyz :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _sensor
       (write-word _sensor s)
     ;; int16 _taxel
       (write-word _taxel s)
     ;; xela_server/xSensorData _xyz
       (send _xyz :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _sensor
     (setq _sensor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _taxel
     (setq _taxel (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; xela_server/xSensorData _xyz
     (send _xyz :deserialize buf ptr-) (incf ptr- (send _xyz :serialization-length))
   ;;
   self)
  )

(setf (get xela_server::xServerMsg :md5sum-) "87af96ce27144738864aad5bfffc4da7")
(setf (get xela_server::xServerMsg :datatype-) "xela_server/xServerMsg")
(setf (get xela_server::xServerMsg :definition-)
      "int16 sensor
int16 taxel
xSensorData xyz
================================================================================
MSG: xela_server/xSensorData
uint32 x
uint32 y
uint32 z
")



(provide :xela_server/xServerMsg "87af96ce27144738864aad5bfffc4da7")


