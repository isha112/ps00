;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |05|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; sq : Number -> Number
; GIVEN: any negative or non negative number
; RETURNS: the square of the given number
; Examples:
; (sq 10)  => 100
; (sq -5)  => 25

(define (sq n)
  (* n n))

(check-expect (sq 0.5) 0.25)
(check-expect (sq 50) 2500)
(check-expect (sq 10) 100)
(check-expect (sq -5) 25)