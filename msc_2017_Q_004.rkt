#lang racket
;; MSc exam question 2017
;;
;; Question 4
;; implement higher order function filter-out which takes a predicate and list as arguments
;; returns a new list which contains all elements from original list which do not satisfy
;; the predicate
(define (filter-out f l)
  (cond
      ((null? l) '())
      ((f (car l)) (filter-out f (cdr l)))
      (else (cons (car l) (filter-out f (cdr l))))
  )
)

;; should return
;; '(1 1 3)
(filter-out (lambda (x) (= x 2)) '(1 1 2 3 2))
