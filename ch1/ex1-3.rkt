#!/usr/bin/env racket

#lang sicp

(define (square x) (* x x))
(define (min3 a b c)
  (if (= (min a b) (min a c))
      a
      (min b c)))
(define (square_sum3 a b c)
  (+ (square a)
     (square b)
     (square c)))

(define (foo a b c)
        (- (square_sum3 a b c)
           (square (min3 a b c))))

(foo 1 2 3)
(foo 5 -2 100)
