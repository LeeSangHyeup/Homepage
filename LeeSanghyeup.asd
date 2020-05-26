(asdf:defsystem #:leesanghyeup
  :name "LeeSanghyeup"
  :serial t ;; the dependencies are linear.
  :version "0.0.1"
  :description "my homepage"
  :author "Lee Sang hyeup"
  
  :depends-on (:cl-who
	       :cl+ssl
	       :hunchentoot
	       :parenscript)

  #+asdf-unicode :encoding #+asdf-unicode :utf-8
  :components ((:file "package")
	       (:file "load-lisp-html-pages")
	       
	       (:module "lisp-html"
		:components ((:file "index" :depends-on ("template-pages"))
			     
			     (:module "template-pages"
			      :components ((:file "base-page")))))))
