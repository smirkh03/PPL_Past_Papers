#lang racket
;; MSc exam question 2017
;;
;; Question 5

(define (func lst)
  (filter (lambda (x) (not (null? x)))
     (map (lambda (x) (if (eq? (car x) (car (cdr x))) (car x) '()))
          (zip lst (cdr lst)))))

(define (zip ls1 ls2)
  (cond [(null? ls1) '()]
        [(null? ls2) '()]
        (else
          (cons (list (car ls1) (car ls2))
                (zip (cdr ls1) (cdr ls2))))))

(func '(4 1 1 2 4 4 4 5))

;; answer
;; func identifies and returns any list element which has the same value as 
;; it's right hand neighbour
;; the returned value for the above calls is:
;; '(1 4 4)
