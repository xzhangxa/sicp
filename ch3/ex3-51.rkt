#!/usr/bin/env racket

#lang racket

(define the-empty-stream '())
(define stream-null? null?)

(define (cons-stream a b)
  (cons a (delay b)))

(define (stream-car x)
  (car x))

(define (stream-cdr x)
  (force (cdr x)))

(define (stream-ref x idx)
  (if (= idx 0)
    (stream-car x)
    (stream-ref (stream-cdr x) (- idx 1))))

(define (stream-map proc x)
  (if (stream-null? x)
    the-empty-stream
    (cons-stream (proc (stream-car x))
                 (stream-map proc (stream-cdr x)))))

(define (stream-enumerate-interval low high)
  (if (> low high)
    the-empty-stream
    (cons-stream
      low
      (stream-enumerate-interval (+ low 1) high))))

(define (display-line x)
  (display x)
  (display "\n"))

(define (show x)
  (display-line x)
  x)

(define x (stream-map show (stream-enumerate-interval 0 10)))
(stream-ref x 5)
(stream-ref x 7)
