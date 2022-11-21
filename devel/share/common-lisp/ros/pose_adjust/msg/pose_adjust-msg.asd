
(cl:in-package :asdf)

(defsystem "pose_adjust-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AdjustParams" :depends-on ("_package_AdjustParams"))
    (:file "_package_AdjustParams" :depends-on ("_package"))
  ))