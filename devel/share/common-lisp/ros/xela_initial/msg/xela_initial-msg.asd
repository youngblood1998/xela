
(cl:in-package :asdf)

(defsystem "xela_initial-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "xela_msg" :depends-on ("_package_xela_msg"))
    (:file "_package_xela_msg" :depends-on ("_package"))
  ))