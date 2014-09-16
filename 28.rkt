;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |28|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define list1 (list "one" "two" "three"))
(define list2 (list "four" "five" "six"))
(define list3 (list "seven" "eight" "nine"))
(define list_f (list list1 list2 list3))

(define (str_app lst)
  (if (>= (length lst) 1)
     (string-append (first lst) " " (str_app (rest lst)))
     (string-append "")))
; Helper function
; str_app : list -> string
; GIVEN : a list of strings
; RETURNS : a combined string which consists of strings in list seperated by spaces

(define (list_app lst)
  (if (>= (length lst) 1)
     (string-append (str_app (first lst))  (list_app (rest lst)))
     (string-append "")))
; list_app : list -> text/image
; GIVEN : a list of lists that contains strings
; RETURNS : combined string drawn as text saperated by spaces 
; Examples : (draw_list list_f)
; where  list_f = list + list1 + list2 + list3
;  list1 (list "one" "two" "three")
;  list2 (list "four" "five" "six")
;  list3 (list "seven" "eight" "nine")

(define (draw_list lst)
  (text (list_app lst) 20 "blue"))

; Test
(draw_list list_f)