(define (double f) (lambda (n) (f (f n))))

(((double (double double)) inc) 5) ;21


