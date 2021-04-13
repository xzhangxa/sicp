#!/usr/bin/env racket

#lang sicp

(define (make-account balance password)
  (define (withdraw amount)
    (if (>= balance amount)
      (begin (set! balance (- balance amount))
             balance)
      "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)
  (define (dispatch passwd m)
    (if (eq? passwd password)
      (cond ((eq? m 'withdraw) withdraw)
            ((eq? m 'deposit) deposit)
            (else (error "Unknown request -- MAKE-ACCOUNT" m)))
      (error "Incorrect password")))
  dispatch)

(define acc (make-account 100 'hello))

((acc 'hello 'withdraw) 40)
((acc 'world 'deposit) 50)
