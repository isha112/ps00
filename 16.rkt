;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |16|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define my-image (bitmap "E:/PDP/pdp-isha112/ps00/smallfish.jpg"))  ; defining one image as my-image
(above my-image my-image my-image)                                  ; place my-image above each other 3 times 
(scale 0.5 my-image)                                                ; scale down the image by 1/2
(overlay (circle 20 "solid" "green")                                ; overlays a solid green circle over my-image
          my-image)
(beside my-image                                                    ; scales down my-image to 1/4th and places my-image besides it
        (scale 0.25 my-image))
