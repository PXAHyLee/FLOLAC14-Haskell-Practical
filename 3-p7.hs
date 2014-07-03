interleave :: [a] -> [a] -> [a]
-- interleave [] x  = x
-- interleave x []  = x
-- interleave x y   = [head x, head y] ++ interleave (tail x) (tail y)
interleave [] x  = x
interleave (x : xs) y = x : interleave y xs
