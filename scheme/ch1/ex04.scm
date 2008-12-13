;if b is greater than 0, this adds a and b
;otherwise this subtracts b from a
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))