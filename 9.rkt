;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |09|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; even-check? : Number -> Boolean
; GIVEN: Any number 
; RETURNS: 'true' if the given number is even or else 'false'
; Examples:
; (even-check? 1)  => false
; (even-check? -2)  => true

(define (even-check? x)
  (if (= (remainder x 2)
      0)
  true
  false))

(check-expect (even-check? 1) false)
(check-expect (even-check? -2) true)