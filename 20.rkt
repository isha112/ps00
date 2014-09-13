;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |20|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; Expression to create human shape
(above/align "center" (circle 10 "solid" "purple")
       (beside/align "top" (rotate -5 
                                   (rectangle 7 35 "solid" "purple"))
                     (rectangle 25 40 "solid" "black")
                     (rotate 5 
                             (rectangle 7 35 "solid" "purple")))
       (beside (rectangle 7 30 "solid" "purple")
               (rectangle 4 30 "solid" "white")
               (rectangle 7 30 "solid" "purple")))