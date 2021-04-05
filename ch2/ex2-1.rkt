#!/usr/bin/env racket

#lang sicp

(define (make-rat n d)
  (let ((g (gcd n d))
        (new_n (if (< n 0)
                   (abs n)
                   n))
        (new_d (if (< d 0)
                   (abs d)
                   d))
        (sign (if (< (/ n d) 0)
                  -1
                  1)))
    (cons (* sign (/ new_n g)) (/ new_d g))))

(define numer car)
(define denom cdr)

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))


(print-rat (make-rat -1 1))
(print-rat (make-rat 1 2))
(print-rat (make-rat 2 4))
(print-rat (make-rat -10 -8))
(print-rat (make-rat 2 -4))
