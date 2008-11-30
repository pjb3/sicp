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

(define (make-rect bottom-left-point top-right-point) 
  (cons bottom-left-point top-right-point))
(define (bottom-left-point-rect r) (car r))
(define (top-right-point-rect r) (cdr r))
(define (width-rect r)
  (- (x-point (top-right-point-rect r)) 
     (x-point (bottom-left-point-rect r))))
(define (height-rect r)
  (- (y-point (top-right-point-rect r))
     (y-point (bottom-left-point-rect r))))
(define (perimeter-rect r)
  (* 2 (+ (width-rect r) (height-rect r))))	
(define (area-rect r)
  (* (width-rect r) (height-rect r)))

(define rect (make-rect (make-point 0 0) (make-point 3 4)))

(area-rect rect) ;12
(perimeter-rect rect) ;14