(define (compose f g) (lambda (n) (f (g n))))

(define (repeated f n)
  (if (= n 0)
      +
      (compose f 
	       (repeated f (- n 1)))))