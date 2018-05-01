#lang racket
;; MSc exam question 2016
;;
;; Question 4

;; part: a
;;
;; Write a function
;; leapYear :: Int -> Bool
;; that returns true if the year is a leap year, and false otherwise.
;; The following rules decide which years are leap years:
;; • Every year divisible by 4 is a leap year, except
;; • Every year divisible by 100 is not a leap year, except
;; • Every year divisible by 400 is still a leap year.
;; For example 
;;   2004 was a leap year (divisible by 4)
;;   1900 was not a leap year (divisible by 100)
;;   and 2000 was a leap year (divisible by 400).

(define (is-leap-year x)
  (cond ((= (modulo x 400) 0) #t)
        ((= (modulo x 100) 0) #f)
        ((= (modulo x 4) 0) #t)
        (else #f)
  )
)

(is-leap-year 2004)
(is-leap-year 1900)
(is-leap-year 2000)

;; part b
;;
;; Write a function
;; f :: Int -> [Int] -> [Int]
;; that replaces every second element of a list, starting with the first, with a
;; given item. The resulting list should have the same length as the argument
;; list and should begin with the item, followed by the second element of the
;; list, followed by the item, followed by the fourth element of the list,
;; followed again by the item, and so on. For example:
;;       f 0 [1,2,3,4,5] = [0,2,0,4,0]
;;       f 0 [1,2,3,4]   = [0,2,0,4]
;;       f 0 []          = []
;;       f 0 [7]         = [0]
;; 
;; Use basic functions, list comprehension, and library functions, but no recursion

;; create variable to test with
(define my-list (range 10))

;; learning to iterate with for statement
(for 
  ([x (in-range (length my-list))])
  (println x)
)

;; learning to access list elements with index
(for
  ([x (in-range (length my-list))])
  (println (list-ref my-list x))
)

;; learning to use if statement
(for
  ([x (in-range (length my-list))])
  (println (if (odd? (list-ref my-list x)) x 2))
)

;; learning to use for/list which stores the results from body of loop
;; for statement is used mainly for functions with side effects
(define (f rep lst)
  (define xs
    (for/list
      ([x (in-range (length lst))])
      (if (odd? x) (list-ref lst x) rep)
    )
  )
  xs
)

;; invoking function
(f 0 my-list)

;; checking the results is a list
(list? (f 0 my-list))

;; testing with exam samples
(f 0 '(1 2 3 4 5))
(f 0 '(1 2 3 4))
(f 0 '())
(f 0 '(7))

