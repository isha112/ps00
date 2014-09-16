;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |18|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; dimensions for next two rectangles in sequence will be
; 32X64 and
; 64X128

; formula for finding nth element in sequence: 2^n X 2^(n+1)
; where n is the sequence number of the element

; rec-sequence : Number -> Rectangle
; GIVEN : A number n which specifies sequence number of an element
; RETURNS : nth element in the rectangle sequence
; Examples
; (rec-sequence 5) -> (rectangle 32 64 "solid" "blue")
; (rec-sequence 2) -> (rectangle 4 8 "solid" "blue")

(define (rec-sequence n)
  (rectangle (expt 2 n)
             (expt 2
                   (+ n 1)) "solid" "blue"))

(check-expect (rec-sequence 5) (rectangle 32 64 "solid" "blue"))
(check-expect (rec-sequence 2) (rectangle 4 8 "solid" "blue"))

