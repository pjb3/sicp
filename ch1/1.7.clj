(defn- square [x] (* x x))

(defn- average [x y] (/ (+ x y) 2))

(defn- abs [n] (if (< n 0) (* n -1) n))

(defn- improve [guess x]
  (average guess (/ x guess)))

(defn- good-enough? [guess prev-guess x]
  (< (abs (/ (- (square guess) (square prev-guess)) guess)) 0.001))

(defn sqrt 
  ([x] (sqrt 1.0 0.0 x))
  ([guess prev-guess x]
     (if (good-enough? guess prev-guess x)
       guess
       (sqrt (improve guess x) guess x))))
    
  