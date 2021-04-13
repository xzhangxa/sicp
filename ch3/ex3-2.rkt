#!/usr/bin/env racket

#lang sicp

(define (make-monitored f)
  (let ((count 0))
    (lambda (value)
      (cond ((eq? value 'how-many-calls?) count)
            ((eq? value 'reset-count) (set! count 0))
            (else (begin (set! count (+ count 1))
                         (f value)))))))

(define s (make-monitored sqrt))

(s 100)
(s 'how-many-calls?)
(s 4)
(s 9)
(s 'reset-count)
(s 'how-many-calls?)
