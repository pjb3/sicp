(define (f x y z)
  (if (>= x y)
      (+ (* x x) (if (>= y z) (* y y) (* z z)))
      (+ (* y y) (if (>= x z) (* x x) (* z z)))))
	 