double :: [a] -> [a]
double (x:xs) = [x, x] ++ double xs
double _      = []
