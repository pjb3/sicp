;This is a function that recursively evaluates itself, so it will never terminate
(define (p) (p))

;This function returns 0 if its first argument is 0, otherwise it returns y 
(define (test x y)
  (if (= x 0)
      0
      y))

;If you evaluate the expression (test 0 (p)) using applicative-order evaluation, 
;the expression evaluates the operands before applying the operator to the operands,
;so that would evaluate (p), which would never terminate.  

;If you evaluate the expression using normal-order evaluation, 
;the operands are not evaluated until they need to be.  
;(test 0 (p)) expands to (if (= 0 0) 0 (p)), and as that expression is evaluated,
;the predicate of the if true, it returns the consequent and never evaluates the alternative. 
