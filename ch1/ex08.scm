(define (cube x) (* x x x))

(define (improve x y) 
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (good-enough? guess prev-guess x)
  (< (abs (/ (- (cube guess) (cube prev-guess)) guess)) 0.001))

(define (cbrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess x)
      guess
      (cbrt-iter (improve x guess) guess
		 x)))

(define (cbrt x)
  (cbrt-iter 1.0 0.0 x))