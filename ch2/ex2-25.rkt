#!/usr/bin/env racket

#lang sicp

(define s1 (list 1 3 (list 5 7) 9))
(define s2 (list (list 7)))
(define s3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

(car (cdr (car (cdr (cdr s1)))))
(car (car s2))
(car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr s3))))))))))))
