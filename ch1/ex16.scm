 (define (fast-expt b n)
   (define (iter a b count)
     (cond ((= count 0) a)
           ((even? count) (iter a (square b) (/ count 2)))
           (else (iter (* a b) b (- count 1)))))
   (iter 1 b n)) 