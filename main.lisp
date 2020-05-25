(asdf:load-system :leesanghyeup)
(in-package #:leesanghyeup)


(defun reload ()
  (asdf:load-system :leesanghyeup)
  (dolist (page (load-lisp-html-pages))
  (push (hunchentoot:create-prefix-dispatcher (uri page) (create-html-function-name page)) *dispatch-table*)))

(dolist (page (load-lisp-html-pages))
  (push (hunchentoot:create-prefix-dispatcher (uri page) (create-html-function-name page)) *dispatch-table*))

(defvar *acceptor* (make-instance 'hunchentoot:easy-acceptor :port 8080))
(setf (hunchentoot:acceptor-document-root *acceptor*) #p"lisp-html/template-pages/bootstrap")

;start web server
(hunchentoot:start *acceptor*)

;stop web server
(hunchentoot:stop *acceptor*)
