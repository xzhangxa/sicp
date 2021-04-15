#!/usr/bin/env racket

#lang sicp

(define (check-loop x)
  (let ((iterated '()))
    (define (loop x)
      (cond ((not (pair? x)) #f)
            ((memq x iterated) #t)
            (else (begin (set! iterated (cons x iterated))
                         (loop (cdr x))))))
    (loop x)))

(define (last-pair x)
  (if (null? (cdr x))
    x
    (last-pair (cdr x))))

(define (make-cycle x)
  (set-cdr! (last-pair x) x)
  x)

(check-loop (list 'a 'b 'c))
(check-loop (make-cycle (list 'a 'b 'c)))
