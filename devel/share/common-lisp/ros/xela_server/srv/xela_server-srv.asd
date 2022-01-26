
(cl:in-package :asdf)

(defsystem "xela_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :xela_server-msg
)
  :components ((:file "_package")
    (:file "XelaSensorStream" :depends-on ("_package_XelaSensorStream"))
    (:file "_package_XelaSensorStream" :depends-on ("_package"))
    (:file "XelaSensorX" :depends-on ("_package_XelaSensorX"))
    (:file "_package_XelaSensorX" :depends-on ("_package"))
    (:file "XelaSensorXY" :depends-on ("_package_XelaSensorXY"))
    (:file "_package_XelaSensorXY" :depends-on ("_package"))
    (:file "XelaSensorXYZ" :depends-on ("_package_XelaSensorXYZ"))
    (:file "_package_XelaSensorXYZ" :depends-on ("_package"))
    (:file "XelaSensorY" :depends-on ("_package_XelaSensorY"))
    (:file "_package_XelaSensorY" :depends-on ("_package"))
    (:file "XelaSensorZ" :depends-on ("_package_XelaSensorZ"))
    (:file "_package_XelaSensorZ" :depends-on ("_package"))
  ))