(in-package #:leesanghyeup)


(defun run ()
  (in-package #:leesanghyeup)
  
  (dolist (page (load-lisp-html-pages))
    (push (hunchentoot:create-prefix-dispatcher (uri page) (create-html-function-name page)) *dispatch-table*))

  (defvar *acceptor* (make-instance 'hunchentoot:easy-acceptor
				    :port 80
				    :document-root #p"lisp-html/template-pages/bootstrap"
				    :error-template-directory #p"lisp-html/error-pages"
				    :access-log-destination #p"logs/access.log"
				    :message-log-destination #p"logs/message.log"))

  (setf *show-lisp-errors-p* T)
  
  ;start web server
  (hunchentoot:start *acceptor*)
  (handler-case (bt:join-thread (find-if (lambda (th)
					   (search "hunchentoot" (bt:thread-name th)))
                                         (bt:all-threads)))
    ;; Catch a user's C-c
    (#+sbcl sb-sys:interactive-interrupt
      () (progn
           (format *error-output* "Aborting.~&")
	   ;stop web server
           (hunchentoot:stop *acceptor*)
           (uiop:quit)))
    (error (c) (format t "Woops, an unknown error occured:~&~a~&" c)))
  )
