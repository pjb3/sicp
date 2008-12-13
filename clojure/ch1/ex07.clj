(ns sicp.ch1.ex07)

(defn square [x] (* x x))

(defn average [x y] (/ (+ x y) 2))

(defn abs [n] (if (< n 0) (* n -1) n))

(defn sqrt 
  ([x] (sqrt 1.0 0.0 x))
  ([guess prev-guess x]
     (let [improve 
	   (fn [guess] (average guess (/ x guess)))
	   good-enough? 
	   (fn [guess prev-guess] 
	     (< (abs (/ (- (square guess) (square prev-guess)) guess)) 0.001))]
       (if (good-enough? guess prev-guess)
	 guess
	 (sqrt (improve guess) guess x)))))
    
  