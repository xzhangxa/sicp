#!/usr/bin/env racket

#lang sicp

(define (count-pairs x)
  (if (not (pair? x))
    0
    (+ (count-pairs (car x))
       (count-pairs (cdr x))
       1)))

(define pairs1 (cons 'a 'b))
(define temp (cons pairs1 pairs1))
(define temp_b (list 'b))
(define pairs2 (list 'a 'b))
(define pairs3 (cons (cons 'a 'b) (cons 'c 'd)))
(define pairs4 (cons (cons 'a temp_b) temp_b))
(define pairs5 (cons pairs2 pairs2))
(define pairs7 (cons temp temp))

(count-pairs pairs1)
(count-pairs pairs2)
(count-pairs pairs3)
(count-pairs pairs4)
(count-pairs pairs5)
(count-pairs pairs7)
