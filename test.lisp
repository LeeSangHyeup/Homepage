(asdf:load-system :leesanghyeup)
(in-package #:leesanghyeup)

(defun reload ()
  (asdf:load-system :leesanghyeup)
  
  (dolist (page (load-lisp-html-pages))
    #|
    (when (string-equal "/index" (uri page))
	(push (hunchentoot:create-prefix-dispatcher "/" (create-html-function-name page)) *dispatch-table*))
    |#
    (push (hunchentoot:create-prefix-dispatcher (uri page) (create-html-function-name page)) *dispatch-table*))
  )

(defun run ()
  (reload)

  (defvar *acceptor* (make-instance 'hunchentoot:easy-acceptor
				    :port 8080
				    :document-root #p"lisp-html/template-pages/bootstrap"
				    :error-template-directory #p"lisp-html/error-pages"
				    :access-log-destination #p"logs/access.log"
				    :message-log-destination #p"logs/message.log"))

  (setf *show-lisp-errors-p* T)
  
  ;start web server
  (hunchentoot:start *acceptor*)
  )

;stop web server
(hunchentoot:stop *acceptor*)
