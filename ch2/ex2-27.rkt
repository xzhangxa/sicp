#!/usr/bin/env racket

#lang sicp

(define x (list (list 1 2) (list 3 4)))

(define (deep-reverse items)
  (define (iter items)
    (if (pair? items)
        (reverse (map iter items))
        items))
  (iter items))

x
(reverse x)
(deep-reverse x)
