myConcat :: [[a]] -> [a]
myConcat (x:xs) = x ++ myConcat xs
myConcat _   = []
