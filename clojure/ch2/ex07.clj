;given, converted to clojure
(defn make-interval 
  [lower-bound upper-bound] 
  {:lower-bound lower-bound :upper-bound upper-bound})

(defn add-interval [x y]
  (make-interval (+ (:lower-bound x) (:lower-bound y))
		 (+ (:upper-bound x) (:upper-bound y))))

(defn mul-interval [x y]
  (let [products 
	[(* (:lower-bound x) (:lower-bound y))
	 (* (:lower-bound x) (:upper-bound y))
	 (* (:upper-bound x) (:lower-bound y))
	 (* (:upper-bound x) (:upper-bound y))]]
    (make-interval (apply min products)
		   (apply max products))))
    
(defn div-interval [x y]
  (mul-interval 
   x
   (make-interval (/ 1.0 (:upper-bound y))
		  (/ 1.0 (:lower-bound y)))))
				  

;solution - because I am using maps to represent the interval,
;I don't have to define selectors, they are already there using keywords
((make-interval 6.12 7.48) :lower-bound)
((make-interval 4.465 4.935) :upper-bound)
