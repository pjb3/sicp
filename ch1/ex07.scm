;(sqrt 0.0001) evaluates to 0.323, which is off by 200%
;For very large numbers, you might reach a point 
;where it alternates between two guesses that are more that 0.001 off,
;therefore it never terminates
;this version works

(define (sqrt x)
  (define (square x) (* x x))

  (define (average x y) (/ (+ x y) 2))

  (define (improve guess x)
    (average guess (/ x guess)))

  (define (good-enough? guess prev-guess x)
    (< (abs (/ (- (square guess) (square prev-guess)) guess)) 0.001))

  (define (sqrt-iter guess prev-guess x)
    (if (good-enough? guess prev-guess x)
	guess
	(sqrt-iter (improve guess x) guess
		   x)))

  (sqrt-iter 1.0 0.0 x))





