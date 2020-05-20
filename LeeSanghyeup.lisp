(ql:quickload 'cl-who)
(ql:quickload 'cl+ssl)
(ql:quickload 'hunchentoot)
(ql:quickload 'parenscript)

(defpackage :Lee-Sanghyeup (:use :cl :cl-who :hunchentoot :parenscript))
(in-package :Lee-Sanghyeup)(in-package :Lee-Sanghyeup)

(load "load-lisp-html-pages.lisp")

(dolist (page (load-lisp-html-pages))
  (push (hunchentoot:create-prefix-dispatcher (uri page) (create-function page)) *dispatch-table*)
  ;;(push (hunchentoot:create-prefix-dispatcher "/main" 'create-main-page) *dispatch-table*)


(defvar *acceptor* (make-instance 'hunchentoot:easy-acceptor :port 8080))

;start web server
(hunchentoot:start *acceptor*)

;stop web server
(hunchentoot:stop *acceptor* t)
