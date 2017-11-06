;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Week1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image Image -> Boolean
;; produces true if first image is larger (height and width is larger)

;(define (image-larger? img1 img2) false)  ;stub

(check-expect (image-larger? (rectangle 10 20 "solid" "red") (rectangle 3 4 "solid" "blue")) true)
(check-expect (image-larger? (rectangle 10 20 "solid" "red") (rectangle 30 40 "solid" "blue")) false)
(check-expect (image-larger? (rectangle 10 20 "solid" "red") (rectangle 3 40 "solid" "blue")) false)
(check-expect (image-larger? (rectangle 10 20 "solid" "red") (rectangle 30 4 "solid" "blue")) false)
(check-expect (image-larger? (rectangle 10 20 "solid" "red") (rectangle 10 4 "solid" "blue")) false)
(check-expect (image-larger? (rectangle 10 20 "solid" "red") (rectangle 10 40 "solid" "blue")) false)
(check-expect (image-larger? (rectangle 10 20 "solid" "red") (rectangle 3 20 "solid" "blue")) false)
(check-expect (image-larger? (rectangle 10 20 "solid" "red") (rectangle 30 20 "solid" "blue")) false)
(check-expect (image-larger? (rectangle 10 20 "solid" "red") (rectangle 10 20 "solid" "blue")) false)

;(define (image-larger? img1 img2)   ;template
;  (... img1 img2))

(define (image-larger? img1 img2)   
  (and (> (image-height img1) (image-height img2))
       (> (image-width img1) (image-width img2)))) 