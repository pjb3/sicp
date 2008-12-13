(define (div-interval x y)
  (if (negative? (* (lower-bound y) (upper-bound y)))
      (error "Can't divide by an interval that spans zero")
      (mul-interval 
       x 
       (make-interval (/ 1.0 (upper-bound y))
		      (/ 1.0 (lower-bound y))))))