;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |25|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; check_boolean : list -> boolean
; GIVEN : a list of booleans
; RETURNS : true if all the elements in list are true otherwise false
; Examples:
; (check_boolean (list true true false)) -> false
; (check_boolean (list true true) -> true

(define (check_boolean lst)
  (cond
    [(empty? lst) true]
    [else (and (first lst) (check_boolean(rest lst)))]))

;Test cases
(check-expect (check_boolean (list false true true)) false)
(check-expect (check_boolean (list true true)) true)