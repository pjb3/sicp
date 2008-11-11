(define (cube n) (* n n n))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
	 (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))

(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (y k) (+ a (* k h)))
  (* (sum f 
	  (cond ((= a 0) (y a))
		((even? a) (* 2 (y a)))
		(else (* 4 (y a))))
	  y b)
     (/ h 3)))