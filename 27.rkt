;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |27|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define (draw_string lst)
  (text (str_app lst) 20 "blue"))
; draw_string : list -> text
; GIVEN : a list of strings
; RETURNS : combined text of the strings in list seperated by spaces
; Examples : (draw_string (list "hello" "user"))

(define (str_app lst)
  (if (>= (length lst) 1)
     (string-append (first lst) " " (str_app (rest lst)))
     (string-append "")))
; a helper function
; str_app : list -> string
; GIVEN : a list of strings
; RETURNS : a combined string which consists of strings in list seperated by spaces

; Test
(draw_string (list "hello" "user"))
(draw_string (list "abc" "xyz"))

