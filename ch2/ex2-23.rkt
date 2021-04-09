#!/usr/bin/env racket

#lang sicp

(define (for-each f items)
  (cond
    ((null? items) #f)
    (else (f (car items))
          (for-each f (cdr items)))))

(for-each (lambda (x) (newline) (display x))
          (list 57 321 88))
(for-each (lambda (x) (newline) (display x))
          '())
