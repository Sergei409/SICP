#lang racket
;------------------------------ (1.3)ver1
(define (foo a b c) (cond ((and (< a b) (< a c)) (+ (* b b) (* c c)))
                          ((and (< b a) (< b c)) (+ (* a a) (* c c)))
                          ((and (< c a) (< c b)) (+ (* a a) (* b b)))))
;------------------------------ (1.3)ver2
(define (square x) (* x x))
(define (foo a b c)
  (cond ((and (< a b) (< a c)) (+ (square b) (square c)))
        ((and (< b a) (< b c)) (+ (square a) (square c)))
        ((and (< c a) (< c b)) (+ (square a) (square b)))))	