#lang racket
;------------------------------ (1.1)
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6 ))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    a
    b)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
;------------------------------ (1.2)
(/ (+ 5
      4
      (- 2
         (- 3
            (+ 6
               (/ 4 5)))))
   (* 3
      (- 6 2)
      (- 2 7)))
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
;------------------------------ (1.4)
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;------------------------------ (1.5)
(define (p) (p))
(define (test x y)
	(if (= x 0)
		0
		y))
;------------------------------ 
