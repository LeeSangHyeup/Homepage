(asdf:defsystem :LeeSnaghyeup
    :description "my homepage"
    :version "1.0"
    :author "Leesnaghyeup"
    :depends-on (:cl-who
                 :cl+ssl
		 :hunchentoot
		 :parenscript)
  :components ((:file "load-lisp-html-pages")))
#|
    :components ((:file "packages")
                 (:file "tools" :depends-on ("packages"))
                 (:file "functions" :depends-on ("packages"))
                 (:file "main" :depends-on ("packages"
                                            "functions"))))
|#
