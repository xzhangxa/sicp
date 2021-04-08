#!/usr/bin/env racket

#lang sicp

(define (my_reverse li)
  (define (iter li result)
    (if (null? li)
        result
        (iter (cdr li) (cons (car li) result))))
  (iter (cdr li) (list (car li))))

(my_reverse (list 1 4 9 16 25))
(my_reverse (list 1 2 3 4))
(my_reverse (list 4))
(my_reverse (list nil))
