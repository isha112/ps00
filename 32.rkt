;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |32|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define-struct point(x y))
; A Point is a (make-point Number Number)
; It represents a point 
; Interpretation:
;   x = x coordinate of the point
;   y = y coordinate of the point
; Template
; point-fn : Point -> ??
; (define (point-fn p)
;  (... (point-x p)
;       (point-y p)))

(define my_lst (list (make-point 3 4) (make-point 5 12) ))

; Helper function
(define (dist pnt)
  (+ (point-x pnt) (point-y pnt)))
; dist : point -> Number
; GIVEN : a point with x and y coordinates
; RETURNS : distance of the point from (0,0)
; Example : (dist (make-point 3 4)) -> 7 

(define (sum_dist lst)
  (if (>= (length lst) 1)
      (+ (dist (first lst)) (sum_dist(rest lst)))
      (+ 0 0)))
; sum_dist : list -> Number
; GIVEN : a list of points
; RETURNS : sum of the distances to each of those Points from (0,0)
; Example : (sum_dist (list (make-point 3 4) (make-point 5 12)) -> 24

; Test
(check-expect (sum_dist my_lst) 24)


