;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |26|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
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

(define CIRCLE (circle 10 "solid" "blue"))
(define EMPTYX (empty-scene 300 300))

(define my_lst (list (make-point 50 50) (make-point 100 100) (make-point 20 200) ))
(define lst (list empty))

(define (draw_circle lst)
  (cond
       [(= (length lst) 1) (place-image CIRCLE 
                  (point-x (first lst)) (point-y (first lst))
                  EMPTYX)]
    [(> (length lst) 1)(place-image CIRCLE 
                  (point-x (first lst)) (point-y (first lst))
                  (draw_circle (rest lst)))]))
; draw_circle : list -> image
; GIVEN : a list of points
; RETURNS : 300x300 scene with solid blue circle with radius 10 drawn at given points in the list
; Examples: (draw_circle (list (make-point 50 50) (make-point 100 100) (make-point 20 200)) 
;           (draw_circle (list (make-point 20 50) (make-point 56 70) (make-point 150 250))

; Test
(draw_circle my_lst)


  