#!/usr/bin/env racket

#lang sicp

(define (loop-parity parity li)
  (if (null? li)
      li
      (if (= parity (remainder (car li) 2))
          (cons (car li) (loop-parity parity (cdr li)))
          (loop-parity parity (cdr li)))))

(define (same-parity first . rest)
  (let ((parity (remainder first 2)))
    (cons first
          (loop-parity parity rest))))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
