(define (cons a b) (* (expt 2 a) (expt 3 b)))
(define (powers-of n d)
  (define (iter i pow)
    (if (zero? (modulo i d))
	(iter (/ i d) (+ pow 1))
	pow))
  (iter n 0))
(define (car p)
  (powers-of p 2))
(define (cdr p)
  (powers-of p 3))

(cons 4 5)
(* (expt 2 4) (expt 3 5))
(* 16 243)
3888
(powers-of 3888 2); 4
(powers-of 3888 3); 5