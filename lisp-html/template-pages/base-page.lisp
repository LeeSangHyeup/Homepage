(in-package #:leesanghyeup)

(defmacro base-page ((&key title) &body body)
  `(with-html-output-to-string (*standard-output* nil :prologue t :indent t)
     (:html :xmlns "http://www.w3.org/1999/xhtml"  :xml\:lang "en" :lang "en"
       (:head
         (:meta :http-equiv "Content-Type" :content "text/html;charset=utf-8")
     (:title ,title)
     (:link :type "text/css" :rel "stylesheet" :href "/retro.css"))
       (:body
         (:div :id "header" ; Start all pages with our header.
           ;;(:img :src "/logo.jpg" :alt "Commodore 64" :class "logo")
	       ;;(:span :class "strapline" "Vote on your favourite Retro Game")
	       )
         ,@body))))
