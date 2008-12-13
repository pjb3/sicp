;constructors
(defn make-interval 
  [lower-bound upper-bound] 
  {:lower-bound lower-bound :upper-bound upper-bound})
(defn make-interval-from-tolerance
  [ohms tolerance] 
  (make-interval (- ohms (* ohms tolerance))
		 (+ ohms (* ohms tolerance))))

;solution
((make-interval-from-tolerance 6.8 0.1) :lower-bound)
((make-interval-from-tolerance 6.8 0.1) :upper-bound)
