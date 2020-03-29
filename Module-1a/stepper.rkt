;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname stepper) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; stepper.rkt


;; Example of an expression evaluation
(define A 3)
(define B 2)
(define CONST 1)

(+ (* A B) CONST)


;; Example of a function definition and function call
(define (max-dim img)
  (if (> (image-width img) (image-height img))
      (image-width img)
      (image-height img)))

(define WIDTH 50)
(define HEIGHT 25)
(define RECTANGLE-TYPE "outline")
(define RECTANGLE-COLOR "orange")


(define RECTANGLE (rectangle WIDTH HEIGHT RECTANGLE-TYPE RECTANGLE-COLOR))
(max-dim RECTANGLE)

;; Putting it all together!
(define SIZE 25)

(define (stop-sign size)
  (overlay (text "STOP" (* 0.8 size) "white")
           (regular-polygon size 8 "solid" "red")))
  
(define STOP-SIGN (stop-sign SIZE))

 (max (max-dim RECTANGLE) (max-dim STOP-SIGN))
 