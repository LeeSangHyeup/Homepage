(in-package #:leesanghyeup)

(defun create-error()
  (base-page (:title "Lee Sang Hyeup")
    (write-string "<!-- error-->")
    
    (:hr :class "m-0")
    (write-string "<!-- Education-->")
    (:section :class "resume-section" :id "education"
	      (:div :class "resume-section-content"
		    (:h2 :class "mb-5" (write-string "Education"))
		    (:div :class "d-flex flex-column flex-md-row justify-content-between mb-5"
			  (:div :class "flex-grow-1"
				(:h3 :class "mb-0" (write-string "에러가 발생했습니다."))
				(:div :class "subheading mb-3" "정보통신공학전공")
				(:div  "데이터마이닝 연구실")
				(:p (write-string "학점 : 4.31/4.5")))
			  (:div :class "flex-shrink-0"
				(:span :class "text-primary" (write-string "2015. 9 - 2017. 2"))))
		    )
	      )
    )
  )
