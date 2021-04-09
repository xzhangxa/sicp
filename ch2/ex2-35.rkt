#!/usr/bin/env racket

#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (count-leaves t)
  (accumulate (lambda (x y) (if (pair? x)
                                (+ (count-leaves x) y)
                                (+ y 1)))
              0
              (map (lambda (x) x) t)))

(count-leaves (list 1 2 3 4))
(count-leaves (list 1 2 (list 3 4)))
(count-leaves (list (list 1 2) (list 3 4)))
(count-leaves (list '() (list 3 4)))
