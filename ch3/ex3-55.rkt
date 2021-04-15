#!/usr/bin/env racket

#lang sicp

(define (partial-sums s)
  (cons-stream (stream-car s) (add-stream (partial-sums s) s)))
