;Port of Ken Dyck's Scheme solution to Clojure
;http://www.kendyck.com/archives/2005/05/01/solution-to-sicp-exercise-116/
(defn square [x] (* x x))

(defn fast-expt [b n]
  (loop [a 1 b b n n]
    (cond (zero? n) a
	  (even? n) (recur a (square b) (/ n 2))
	  :else (recur (* a b) b (- n 1)))))