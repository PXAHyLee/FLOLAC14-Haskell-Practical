fan :: a -> [a] -> [[a]]
fan x []    = [[x]]
fan x (y:ys)  = (x : y : ys) : map (y:) (fan x ys)
