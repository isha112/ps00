;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |19|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; rel-rec-sequence: Number Number -> Rectangle
; GIVEN : Takes two numbers and returns a solid blue rectangle, where the first number is
; the width of the rectangle, and the second number is the proportion of width
; RETURNS : calculates the height of the rectangle(i.e. height = width * proportion)
;           and returns the rectangle of that width and height            
; Examples : (rel-rec-sequence 5 2) -> (rectangle 5 10 "solid" "blue")
;          : (rel-rec-sequence 10 0.5) (rectangle 10 5 "solid" "blue")

(define (rel-rec-sequence w p)
  (rectangle w
             (* w p) "solid" "blue"))

; Test cases
(check-expect (rel-rec-sequence 5 2) (rectangle 5 10 "solid" "blue"))
(check-expect (rel-rec-sequence 10 0.5) (rectangle 10 5 "solid" "blue"))
(check-expect (rel-rec-sequence 2 3) (rectangle 2 6 "solid" "blue"))