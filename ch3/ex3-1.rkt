#!/usr/bin/env racket

#lang sicp

(define (make-accumulator total)
  (lambda (value)
    (begin (set! total (+ total value))
           total)))

(define acc1 (make-accumulator 5))
(acc1 10)
(acc1 20)
(acc1 3)

(define acc2 (make-accumulator 1))
(acc2 30)
(acc2 2)
(acc2 5)
