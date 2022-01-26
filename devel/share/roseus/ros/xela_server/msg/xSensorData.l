;; Auto-generated. Do not edit!


(when (boundp 'xela_server::xSensorData)
  (if (not (find-package "XELA_SERVER"))
    (make-package "XELA_SERVER"))
  (shadow 'xSensorData (find-package "XELA_SERVER")))
(unless (find-package "XELA_SERVER::XSENSORDATA")
  (make-package "XELA_SERVER::XSENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude xSensorData.msg.html


(defclass xela_server::xSensorData
  :super ros::object
  :slots (_x _y _z ))

(defmethod xela_server::xSensorData
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (round __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; uint32 _x
    4
    ;; uint32 _y
    4
    ;; uint32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _x
       (write-long _x s)
     ;; uint32 _y
       (write-long _y s)
     ;; uint32 _z
       (write-long _z s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _z
     (setq _z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get xela_server::xSensorData :md5sum-) "bfde2953ee46d97d36a711ef3cbc85f4")
(setf (get xela_server::xSensorData :datatype-) "xela_server/xSensorData")
(setf (get xela_server::xSensorData :definition-)
      "uint32 x
uint32 y
uint32 z
")



(provide :xela_server/xSensorData "bfde2953ee46d97d36a711ef3cbc85f4")


