#lang racket
(define x 3)
(define y 5)
(define foo (lambda (z) (let ((y 11)) (println (+ x (+ z y) ) ) )))
(set! x 10)
(foo y)
