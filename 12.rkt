;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |12|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define-struct point (x y))
(make-point 5 3)                   ; will make a point with x as 3 and y as 5
(point? 5)                         ; will return false as point needs two arguments
(point? true)                      ; will return false as point needs two arguments
(point? (make-point 2 1))          ; will make a point with x as 2 and y as 1, as it is a valid point it will return true
(point-x (make-point 8 5))         ; will make a point with x as 8 and y as 5 and will return 8 that is the value of x
(point-y (make-point 42 15))       ; will make a point with x as 42 and y as 15 and will return 15 that is the value of y

(make-point 5 3)                   ; makes a point with x as 5 and y as 3
(check-expect (point? 5) false)
(check-expect (point? true) false)
(check-expect (point? (make-point 2 1)) true)
(check-expect (point-x (make-point 8 5)) 8)
(check-expect (point-y (make-point 42 15)) 15)