;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 21a) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; p_image is defined as a variable which contains a human shape 

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
  (above/align "center"  (scale (* (person-height p) 1)
   p_image)
               (text 
                (string-append (person-first-name p) " " (person-last-name p)) 14 "blue")))

; person-image : person -> image
; GIVEN : object of structure person
; RETURNS : scaled image of person according to height mentioned in the structure object and person's name as text below the image
; Examples : (person-image (make-person "Isha" "Shah" 21 1 45)) -> image of person with unit height with name below it

; TEST

(person-image (make-person "abc" "xyz" 21 1 45))
(person-image (make-person "pqr" "def" 21 2 65))
