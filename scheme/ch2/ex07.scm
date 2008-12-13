;given
(define (make-interval a b) (cons a b))
(define (make-interval-from-tolerance ohms tolerance)
  (make-interval (- ohms (* ohms tolerance))
		 (+ ohms (* ohms tolerance))))
(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

;solution
(define (lower-bound interval) (min (car interval)))
(define (upper-bound interval) (max (cdr interval)))
