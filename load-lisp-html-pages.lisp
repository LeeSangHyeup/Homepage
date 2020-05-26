(in-package #:leesanghyeup)

(defun get-first-character (string)
  (assert (stringp string))
  (char (subseq string 0 1) 0))

(defun starts-with-alphabet-p (string)
  (assert (stringp string))
  (let ((first-character (get-first-character string)))
    (alpha-char-p first-character)))

(defclass lisp-html()
  ((uri
    :initarg :uri :accessor uri)
   (create-html-function-name
    :initarg :create-html-function-name :accessor create-html-function-name))
  (:documentation "class of html page which is written in cl-who"))

(defun replace-all (string part replacement &key (test #'char=))
  "Returns a new string in which all the occurences of the part 
   is replaced with replacement."
  (with-output-to-string (out)
    (loop with part-length = (length part)
          for old-pos = 0 then (+ pos part-length)
          for pos = (search part string
                            :start2 old-pos
                            :test test)
          do (write-string string out
                           :start old-pos
                           :end (or pos (length string)))
          when pos do (write-string replacement out)
	    while pos)))

(defun remove-string (string part)
  ;;;remove all string1 in string2
  (replace-all string part ""))

(defvar lisp-html-folder "lisp-html")
(defvar lisp-file-extension ".lisp")

(defun string-to-symbol (string)
  (intern (string-upcase string)))

;(defun call-function (function-name-string &rest parameters)
;  (assert (stringp function-name-string))
;  (apply (string-to-symbol function-name-string) parameters))

(defun temporary-filep (filename)
  (not (starts-with-alphabet-p filename)))

(defun make-uri (filename)
  (setf filename (replace-all filename "-" "/"))
  #|
  (if (string-equal filename "index")
      ;; locate index.lisp at root page 
      "/"     
  |#
  (concatenate 'string "/" filename))

(defun make-lisp-html-instance (filename)
  (let* ((filename (remove-string filename lisp-file-extension))
	 (create-html-function-name (concatenate 'string "create-" filename)))
    
    (make-instance 'lisp-html
		   :uri (make-uri filename)
		   :create-html-function-name (string-to-symbol create-html-function-name))))

(defun load-lisp-html-pages ()
  (let ((html-pages)
	(directory-exp (concatenate 'string lisp-html-folder "/*" lisp-file-extension)))
    
    (dolist (file (directory directory-exp))
      (let ((filename (file-namestring file)))
	
	(when (not (temporary-filep filename))
	  (let ((lisp-html-instance (make-lisp-html-instance filename)))
	    (setf html-pages (cons lisp-html-instance html-pages))))))
    html-pages))



			     
