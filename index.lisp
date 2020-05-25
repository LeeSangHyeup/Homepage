(in-package #:leesanghyeup)

(defun create-index()
  (base-page (:title "Lee Sang Hyeup")
    (write-string "<!-- About-->")
    (:section :class "resume-section" :id "about"
	      (:div :class "resume-section-content"
		    (:h1 :class "mb-0" (write-string "Lee")
			 (:span :class "text-primary" (write-string "Sanghyeup")))
		    (:div :class "subheading mb-5"
			  (:a :href "mailto:L.sanghyeup@gmail.com" "L.sanghyeup@gmail.com"))
		    (:p :class "lead mb-5" 
			(write-string "blabla some texts here."))
		    (:div :class "social-icons"
			  (:a :class "social-icon" :href "https://github.com/LeeSangHyeup"
			      (:i :class "fab fa-github"))
			  )
		    )
	      )
    (:hr :class "m-0")
    (write-string "<!-- Experience-->")
    (:section :class "resume-section" :id "experience"
	      (:div :class "resume-section-content"
		    (:h2 :class "mb-5" (write-string "Experience"))
		    (:div :class "d-flex flex-column flex-md-row justify-content-between mb-5"
			  (:div :class "flex-grow-1"
				(:h3 :class "mb-0" (write-string "Senior Web Developer"))
				(:div :class "subheading mb-3" "Intelitec Solutions"
				      (:p (write-string "Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for offshoring."))))
			  (:div :class "flex-shrink-0"
				(:span :class "text-primary" (write-string "March 2013 - Present"))))
		    (:div :class "d-flex flex-column flex-md-row justify-content-between mb-5"
			  (:div :class "flex-grow-1"
				(:h3 :class "mb-0" (write-string "Senior Web Developer"))
				(:div :class "subheading mb-3" "Intelitec Solutions"
				      (:p (write-string "Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for offshoring."))))
			  (:div :class "flex-shrink-0"
				(:span :class "text-primary" (write-string "March 2013 - Present")))
			  )
		    )
	      )
    (:hr :class "m-0")
    (write-string "<!-- Education-->")
    (:section :class "resume-section" :id "education"
	      (:div :class "resume-section-content"
		    (:h2 :class "mb-5" (write-string "Education"))
		    (:div :class "d-flex flex-column flex-md-row justify-content-between mb-5"
			  (:div :class "flex-grow-1"
				(:h3 :class "mb-0" (write-string "동국대학교"))
				(:div :class "subheading mb-3" "정보통신공학")
				(:div  "Computer Science - Web Development Track")
				(:p (write-string "학점 : 4.31/4.5")))
			  (:div :class "flex-shrink-0"
				(:span :class "text-primary" (write-string "2015. 9 - 현재"))))
		    (:div :class "d-flex flex-column flex-md-row justify-content-between mb-5"
			  (:div :class "flex-grow-1"
				(:h3 :class "mb-0" (write-string "Senior Web Developer"))
				(:div :class "subheading mb-3" "Intelitec Solutions")
				(:div  "Computer Science - Web Development Track")
				(:p (write-string "GPA: 3.23")))
			  (:div :class "flex-shrink-0"
				(:span :class "text-primary" (write-string "March 2013 - Present"))))
		    )
	      )
    (:hr :class "m-0")
    (write-string "<!-- Skills-->")
    (:section :class "resume-section" :id "skills"
	      (:div :class "resume-section-content"
		    (:h2 :class "mb-5" (write-string "Skills"))
		    (:div :class "subheading mb-3" "Programming Languages & Tools")
		    (:ul :class "list-inline dev-icons"
			 (:li :class "list-inline-item" (:i :class "fab fa-html5"))
			 (:li :class "list-inline-item" (:i :class "fab fa-css3-alt"))
			 )
		    
		    (:div :class "subheading mb-3" "Workflow")
                    (:ul :class="fa-ul mb-0"
			 (:li (:span :class "fa-li" (:i :class "fas fa-check"))
			      (write-string "Mobile-First, Responsive Design"))
			 (:li (:span :class "fa-li" (:i :class "fas fa-check"))
			      (write-string "Mobile-First, Responsive Design")))
		    )
	      )
    (:hr :class "m-0")
    (write-string "<!-- Interests-->")
    (:section :class "resume-section" :id "interests"
	      (:div :class "resume-section-content"
		    (:h2 :class "mb-5" (write-string "Interests"))
		    (:p (write-string "Apart from being a web developer, I enjoy most of my time being outdoors. In the winter, I am an avid skier and novice ice climber. During the warmer months here in Colorado, I enjoy mountain biking, free climbing, and kayaking."))
		    (:p :class "mb-0" (write-string "When forced indoors, I follow a number of sci-fi and fantasy genre movies and television shows, I am an aspiring chef, and I spend a large amount of my free time exploring the latest technology advancements in the front-end web development world."))
		    )
	      )
    )
  )
