(define factorials (cons-stream 1 (mul-streams factorials (streams-cdr integer))))
