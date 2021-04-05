#!/usr/bin/env racket

#lang sicp

(define (cdr z)
  (z (lambda (p q) q)))
