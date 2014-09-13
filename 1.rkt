;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |01|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;Expression that counts number of seconds in a leap year
;Expression1
;(60*60*24*366)
(* (* (* 60 60)
      24)
   366)
   

;Expression2
;((25-1)*(6*10)*(1464/4)+31095360)
(+ (* (* (- 25 1)
         (* 6 10))
      (/ 1464 4))
   31095360)
   
;Expression3
;(((10000+980)*60*288)/6)
(/ (* (* (+ 10000 980)
         60)
      288)
   6)
         





 


 
 
