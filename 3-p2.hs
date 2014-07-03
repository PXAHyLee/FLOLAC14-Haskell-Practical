hasZero :: [Int] -> Bool
hasZero [] = False
hasZero a = head a == 0 || hasZero (drop 1 a)
