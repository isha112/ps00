;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; sum-larger2 : Number Number Number-> Number
; GIVEN: Any 3 numbers a b c 
; RETURNS: Sum of the larger 2 numbers out of given 3 numbers
; Examples:
; (sum-larger2 5 10 3)  => 15
; (sum-larger2 -2 0 -5)  => -2

(define (sum-larger2 a b c)
  (+ (if (> a b)
         a
         b) 
     (if (> c 
            (if (> a b) 
                b 
                a)) 
         c 
         (if (> a b) 
             b
             a))))

(check-expect (sum-larger2 3 3 3) 6)
(check-expect (sum-larger2 5 10 3) 15)
(check-expect (sum-larger2 -2 0 -5) -2)


