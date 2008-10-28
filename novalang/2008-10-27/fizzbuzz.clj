(defn divisible-by? 
  "This returns true if x is divisible by y, returns false otherwise"
  [x y]
  (zero? (rem x y)))

(defn divisible-by-words
  "Takes a number and a word map.  The word map should have integers for keys and the values should be the string that the integer maps to.  This will return a string of all the words that that x maps to, concatenated together.  If x does not map to any words, this will return x.  If no word-map parameter is passed, or nil is password for word-map, this will use the default word-map of 3 'fizz' 5 'buzz'"
  ([x] (divisible-by-words x (array-map 3 "fizz" 5 "buzz")))
  ([x word-map]
     (if (nil? word-map)
       (divisible-by-words x)
       (let [words 
	     (apply str 
		    (map #(if (divisible-by? x (first %1)) 
			    (last %) nil) word-map))]
	 (if (= words "") x words)))))

(defn fizzbuzz [& args]
  (let [{:keys [min max word-map accumulator] :or {min 1 max 100 word-map nil accumulator nil}} (apply hash-map args)]
    (loop [i min acc accumulator]
      (if (> i max) 
	acc
	(let [word (divisible-by-words i word-map)]
	  (if (nil? acc) 
	    (do (prn word)
		(recur (inc i) nil))
	    (recur (inc i) (conj acc word))))))))
