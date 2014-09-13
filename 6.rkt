;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |06|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; quadratic-root : Number Number Number -> Number
; GIVEN: any negative or non negative numbers a,b,c
; RETURNS: returns the root of quadratic equation formed by given numbers
; Examples:
; (quadratic-root 1 0 -4)  => 2
; (quadratic-root 1 -2 -3)  => 3

(define (quadratic-root a b c)
  (/ (+ (sqrt(- (* b b)
                (* 4
                   (* a c))))
        (* b -1))
     (* 2 a)))

(check-expect (quadratic-root 1 0 -4) 2)
(check-expect (quadratic-root 1 -2 -3) 3)