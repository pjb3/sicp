;given
(define (make-interval a b) (cons a b))

(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (mul-interval 
   x 
   (make-interval (/ 1.0 (upper-bound y))
		  (/ 1.0 (lower-bound y)))))

(define (lower-bound interval) 
  (min (car interval) (cdr interval)))

(define (upper-bound interval) 
  (max (car interval) (cdr interval)))

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

;solution
(define a (make-interval 6.12 7.48))
(define b (make-interval 4.465 4.935))

(+ (width a) (width b)) ;0.915
(width (add-interval a b)) ;0.9149999999999991

(width (sub-interval a b)) ;0.4450000000000003
(- (width a) (width b)) ;0.4450000000000003

(* (width a) (width b)) ;0.15979999999999994
(width (mul-interval a b)) ;4.7940000000000005

(/ (width a) (width b)) ;2.893617021276598
(width (div-interval a b)) ;0.21756518956966886