(asdf:defsystem #:leesanghyeup
  :name "LeeSanghyeup"
  :serial t ;; the dependencies are linear.
  :version "0.0.1"
  :description "my homepage"
  :author "Lee Sang hyeup"

  ;;for making executable(.exe) file
  :build-operation "program-op" ;; leave as is
  :build-pathname "run-homepage"
  :entry-point "leesanghyeup:run"
  
  :depends-on (:cl-who
	       :cl+ssl
	       :hunchentoot
	       :parenscript)

  #+asdf-unicode :encoding #+asdf-unicode :utf-8
  :components ((:file "package")
	       (:module "lisp-html"
		:components ((:file "package")
			     (:module "template-pages"
			      :components ((:file "package")
					   (:file "base-page" :depends-on ("package"))))
			     
			     (:file "index" :depends-on ("package" "template-pages"))))
	       
	       (:file "load-lisp-html-pages" :depends-on ("package" "lisp-html"))
	       (:file "running" :depends-on ("package" "load-lisp-html-pages"))))
	       
	       
	       
