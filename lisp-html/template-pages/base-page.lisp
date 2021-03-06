(in-package #:leesanghyeup)

(defmacro base-page ((&key title) &body body)
  `(with-html-output-to-string (*standard-output* nil :prologue t :indent t)
     (SETF (HTML-MODE) :HTML5)
     (:html :lang "ko"
	    (:head
	     (:meta :charset "utf-8")
	     ;set naver webmaster
	     (:meta :name "naver-site-verification" :content "4b6f93c32c34b5e8e849b52a3ec618a1ba9fb2e8")
	     (:meta :name "viewport"
		    :content "width=device-width, initial-scale=1, shrink-to-fit=no")
	     (:title ,title)
	     (:link :type "image/x-icon" :rel "icon" :href "bootstrap/assets/img/favicon.ico")
	     (write-string "<!-- Font Awesome icons (free version)-->")
	     (:script :src "https://use.fontawesome.com/releases/v5.13.0/js/all.js" :charset "utf-8"
		      :crossorigin "anonymous")
	     (write-string "<!-- Google fonts-->")
	     (:link :href "https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700"
		    :rel "stylesheet"
		    :type "text/css")
	     (:link :href "https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i"
		    :rel "stylesheet"
		    :type "text/css")
	     (write-string "<!-- Core theme CSS (includes Bootstrap)-->")
	     (:link :href "bootstrap/css/styles.css"
		    :rel "stylesheet")
	     )
	    (:body :id "page-top"
		   (write-string "<!-- Navigation-->")
		   (:nav :class "navbar navbar-expand-lg navbar-dark bg-primary fixed-top" :id "sideNav"
			 (:a :class "navbar-brand js-scroll-trigger" :href "#page-top"
			     (:span :class "d-block d-lg-none" (write-string "LeeSangHyeup"))
			     (:span :class "d-none d-lg-block"
				    (:img :class "img-fluid img-profile rounded-circle mx-auto mb-2"
					  :src "bootstrap/assets/img/profile.jpg"
					  :art "")))
			 (:button :class "navbar-toggler" :type "button"
				  :data-toggle "collapse" :data-target "#navbarSupportedContent"
				  :aria-controls "navbarSupportedContent" :aria-expanded "false"
				  :aria-label "Toggle navigation"
				  (:span :class "navbar-toggler-icon"))
			 (:div :class "collapse navbar-collapse" :id "navbarSupportedContent"
			       (:ul :class "navbar-nav"
				    (:li :class "nav-item" (:a :class "nav-link js-scroll-trigger"
							       :href "#about" (write-string "About")))
				    (:li :class "nav-item" (:a :class "nav-link js-scroll-trigger"
							       :href "#portpolio" (write-string "Portpolio")))
				    (:li :class "nav-item" (:a :class "nav-link js-scroll-trigger"
							       :href "#education" (write-string "Education")))
				    (:li :class "nav-item" (:a :class "nav-link js-scroll-trigger"
							       :href "#skills" (write-string "Skills")))
				    (:li :class "nav-item" (:a :class "nav-link js-scroll-trigger"
							       :href "#interests" (write-string "Interests"))))))
		   (write-string "<!-- Page Content-->")
		   (:div :class "container-fluid p-0"
		  ;;;;;;;;;;;;;;;;;;;;;;contents here ;;;;;;;;;;;;;;;;;;;;
			 ,@body
			 )
		   (write-string "<!-- Bootstrap core JS-->")
		   (:script :src "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" :charset "utf-8")
		   (:script :src "https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" :charset "utf-8")
		   (write-string "<!-- Third party plugin JS-->")
		   (:script :src "https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js" :charset "utf-8")
		   (write-string "<!-- Core theme JS-->")
		   (:script :src "bootstrap/js/scripts.js" :charset "utf-8")
		   )
	    )
     )
  )


	
	    
