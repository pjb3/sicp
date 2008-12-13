(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))

(cdr (cons 4 5))
(cdr (lambda (m) (m 4 5)))
((lambda (m) (m 4 5)) (lambda (p q) q))
((lambda (p q) q) 4 5); 5
