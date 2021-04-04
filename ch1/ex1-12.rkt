#!/usr/bin/env racket

#lang sicp

(define (pascal r c)
  (cond ((> c r) 0)
        ((or (= c 1) (= r c)) 1)
        (else (+ (pascal (- r 1) (- c 1)) (pascal (- r 1) c)))))

(pascal 1 1)
(pascal 3 5)
(pascal 3 2)
(pascal 5 4)
(pascal 4 4)
