;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |24|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; multiply : list -> Number
; GIVEN : a list containing numbers or an empty list
; RETURNS : multiplication of all the numbers in the list
; Examples :
; (multiply (list 1 2 3)) -> 6
; (multiply (list 3 60 -2)) -> -360
; (multiply (list )) -> 1

(define (multiply lst)
  (cond
    [(empty? lst) 1]
        [else (* (first lst) (multiply (rest lst)))]))

; Test cases
(check-expect (multiply (list 1 2 3)) 6)
(check-expect (multiply (list 3 60 -2)) -360)
(check-expect (multiply (list )) 1)