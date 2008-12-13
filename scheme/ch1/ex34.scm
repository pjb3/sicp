(define (f g) (g 2))

;evaluating (f f) is the same as ((f 2) 2).  When (f 2) tries to be evaluated, it fails, because 2 is not a function