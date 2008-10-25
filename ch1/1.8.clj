(defn cube [x] (* x x x))

(defn improve [x y] 
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(defn good-enough? [guess prev-guess x]
  (< (abs (/ (- (cube guess) (cube prev-guess)) guess)) 0.001))

(defn cbrt
  ([x] (cbrt 1.0 0.0 x))
  ([guess prev-guess x] 
     (if (good-enough? guess prev-guess x)
      guess
      (cbrt (improve x guess) guess
	   x))))
