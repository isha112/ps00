;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 27a) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define my_list (list "hello" "how" "are" "you?"))

(define (draw_string lst)
  (if (>= (length lst) 1)
     (beside (text (first lst) 20 "blue")
             (text " " 20 "blue")
             (draw_string (rest lst)))
     (text " " 10 "blue")
     ))
; draw_string : list -> text
; GIVEN : a list of strings
; RETURNS : combined text of the strings in list seperated by spaces
; Examples : (draw_string (list "hello" "user"))

; Tests
(draw_string (list "hello" "how" "are" "you?"))