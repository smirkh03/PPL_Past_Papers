#lang racket
;; MSc exam question 2017
;;
;; Question 6

(define (not-in-range f dom codom)
  (let ((res (map f dom)))
       (filter-range codom res)))

(define (is-in-range res x)
  (cond ((null? res) #f)
        ((eq? x (car res)) #t)
        (else (is-in-range (cdr res) x))))

(define (filter-range codom res)
  (cond ((null? codom) '())
        ((is-in-range res (car codom)) (filter-range (cdr codom) res))
        (else (cons (car codom) (filter-range (cdr codom) res)))
  )
)

;; result should be '(1 2 3)
(not-in-range (lambda(x) (+ x 3)) '(1 2 6) '(1 2 3 4 5))
