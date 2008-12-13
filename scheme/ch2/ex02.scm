(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))
(define (string-point p)
  (string-append 
   "(" 
   (string (x-point p)) 
   "," 
   (string (y-point p))
   ")"))
(define (print-point p)
  (display (string-point p))
  (newline))

(define (make-segment s e) (cons s e))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))
(define (midpoint-segment s)
  (make-point 
   (/ (+ (x-point (end-segment s)) (x-point (start-segment s))) 2.0)
   (/ (+ (y-point (end-segment s)) (y-point (start-segment s))) 2.0)))
(define (string-segment s)
  (string-append 
   (string-point (start-segment s)) 
   " -> " 
   (string-point (end-segment s))))
(define (print-segment s)
  (display (string-segment s))
  (newline))
(define (test-midpoint-segment)
  (print-point 
   (midpoint-segment 
    (make-segment 
     (make-point 2 3) 
     (make-point 4 6)))))