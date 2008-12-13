;constructors
(defn make-interval 
  [lower-bound upper-bound] 
  {:lower-bound lower-bound :upper-bound upper-bound})
(defn make-interval-from-tolerance
  [ohms tolerance] 
  (make-interval (- ohms (* ohms tolerance))
		 (+ ohms (* ohms tolerance))))

;solution
(defn sub-interval [x y]
  (make-interval (- (x :lower-bound) (y :lower-bound))
		 (- (x :upper-bound) (y :upper-bound))))