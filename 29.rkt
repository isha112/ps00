;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |29|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;p_image is a variable which defines a human shape image
(define p_image (above/align "center" (circle 10 "solid" "purple")
       (beside/align "top" (rotate -5 
                                   (rectangle 7 35 "solid" "purple"))
                     (rectangle 25 40 "solid" "black")
                     (rotate 5 
                             (rectangle 7 35 "solid" "purple")))
       (beside (rectangle 7 30 "solid" "purple")
               (rectangle 4 30 "solid" "white")
               (rectangle 7 30 "solid" "purple"))))


(define-struct person (first-name last-name age height weight))

; A Person is a (make-person String String Number Number Number)
; It represents a details of a person
; Interpretation:
;   first-name = first name of the person
;   last-name = last name of the person
;   age = age of the person
;   height = height of the person
;   weight = weight of the person
; Template
; person-fn : Person -> ??
; (define (person-fn p)
;  (... (peron-first-name p)
;       (person-last-name p)
;       (person-age p)
;       (peron-height p)
;       (person-weight p)))

(define (person-image p)
  (scale (* (person-height p) 1)
   p_image))
; person-image : person -> image
; GIVEN : object of structure person
; RETURNS : scaled image of person according to height mentioned in the structure object
; Examples : (person-image (make-person "Isha" "Shah" 21 1 45)) -> image of person with unit height

(define p1 (make-person "LMN" "STU" 21 1 55))
(define p2 (make-person "ABC" "XYZ" 11 0.5 25))
(define p3 (make-person "PQR" "DEF" 21 1 55))

(define p_list (list p1 p2 p3))

(define (draw_people lst)
  (if(>= (length lst) 1)
     (beside/align "baseline"
                    (person-image (first lst))
                    (draw_people (rest lst)))
     (text "empty list" 10 "white")))
; draw_people : list -> image
; GIVEN : a list of objects of person
; RETURNS : an image in which all the persons are drawn side by side according to their height mentioned in object
; Examples : (draw_people (make-person "LMN" "STU" 21 1 55) (make-person "ABC" "XYZ" 11 0.5 25) (make-person "PQR" "DEF" 21 1 55))

; Test
(draw_people p_list)
