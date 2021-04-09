#!/usr/bin/env racket

#lang sicp

(define x (list (list 1 2) (list 3 4)))

(define (fringe li)
  (define (iter items)
    (cond
      ((null? items) '())
      ((not (pair? items)) (list items))
      (else (append (iter (car items))
                    (iter (cdr items))))))
  (iter li))

(fringe x)
(fringe (list x x))

(pair? '())
(pair? 1)
(pair? (list 1))
(pair? (list 1 2))
