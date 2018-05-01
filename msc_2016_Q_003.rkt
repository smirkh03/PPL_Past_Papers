#lang racket
;; MSc exam question 2016
;;
;; Question 3
;; The Insertion Sort algorithm inserts elements, one at a time, into a sorted
;; list. For this question, we will only consider lists of integers.

;; part: a
;; Suppose we have a procedure insert that inserts an element into a sorted list. For example,
;; (insert 3 (1 5 7)) ==> (1 3 5 7)
;; Write a procedure isort that takes a list of numbers and performs an insertion
;; sort, returning the sorted list. For example:
;;       (isort '(4 2 1 5 3)) ==> (1 2 3 4 5)
(define (isort lst)
  (if (null? lst) lst
      (insert (car lst) (isort (cdr lst)))
  )
)

;; part b
;; Write the procedure insert in Racket.
(define (insert x lst)
  (cond ((null? lst) (list x))                        ;; reached end of list, return a list cotaining x
        ((< x (car lst)) (cons x lst))                  ;; x is < than head of list, add x to front of list and return
        (else (cons (car lst) (insert x (cdr lst))))  ;; x is > head of list leave head of list, insert x lower
  )
)

(insert 3 '(1 5 7))

(isort '(4 2 1 5 3))

;; part c
;; Write a function square-list, that given a list of integers, returns a list 
;; of the squares of all the odd integers in the list. You should provide a
;; solution that does not use recursion but uses higher order functions.
;;
;; For example:
;;    (square-list '(5 6 4 8 9))
;;    '(25 81)
(define (square-list lst)
  (map (lambda (x)(* x x)) (filter odd? lst))
)

(square-list '(5 6 4 8 9))
