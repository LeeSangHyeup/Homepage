(asdf:load-system :leesanghyeup)
(in-package #:leesanghyeup)

(setf (a (car (load-lisp-html-pages))))


(dolist (page (load-lisp-html-pages))
  (push (hunchentoot:create-prefix-dispatcher (uri page) (create-html-function-name page)) *dispatch-table*))
  ;;(push (hunchentoot:create-prefix-dispatcher "/main" 'create-main-page) *dispatch-table*)


(defvar *acceptor* (make-instance 'hunchentoot:easy-acceptor :port 8080))

;start web server
(hunchentoot:start *acceptor*)

;stop web server
(hunchentoot:stop *acceptor* t)


