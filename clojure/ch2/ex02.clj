(defn point [x y] (with-meta {:x x :y y} {:type :point}))
(defn segment [start end] (with-meta {:start start :end end} {:type :segment}))

(defmulti to-s (fn [obj] ((meta obj) :type)))
(defmethod to-s :point [p] (str (p :x) "," (p :y)))
(defmethod to-s :segment [s] (str (to-s (s :start)) "->" (to-s (s :end))))
