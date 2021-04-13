#!/usr/bin/env racket

#lang sicp

(define f_set #f)

(define (f v)
  (display "input is ")
  (display v)
  (display f_set)
  (display "\n")
  (if f_set
    0
    (begin (set! f_set #t)
           v)))

(+ (f 0) (f 1))
