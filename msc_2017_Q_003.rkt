#lang racket
;; MSc exam question 2017
;;
;; Question 3
(define x 100)

(define y 20)

;; part: a
;; should be 101
(+ x 1)

;; part b
;; should be 22
(let ((x 2)) (+ x y))

;; part c
;; should be 101
;; the trick is that in (y x)
;; the local x (set to 1) is NOT used
;; and the global x with value 100 is used
;; if let* is used then y would be set to local x
;; and result of the expressions would be 2
;; (let* ((x 1) (y x)) (+ x y))
(let ((x 1) (y x)) (+ x y))

;; part d
;; should be 15
(begin (set! x 5) (- y x))

;; part e
;; should be 4
;; same as : ((lambda (z a) (set! z a) z) x 4)
((lambda (x a) (set! x a) x) x 4)

;; part f
;; should be 6
(+ x 1)
