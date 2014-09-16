;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |30|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define list_b (list true false true))
(define neg_b empty)

(define (neg-list lst)
  (if (>(length lst) 1)
     (cons (not (first lst)) (neg-list (rest lst)))
     (cons (not (first lst)) neg_b)))
; rev : list -> list
; GIVEN : a list of booeans
; RETURNS : a list with each boolean reversed from the list that is provided
; Examples : (neg-list (list true false true)) => (cons false (cons true (cons false empty)) 

; Test
(check-expect (neg-list list_b) (cons false (cons true (cons false empty)) ))
