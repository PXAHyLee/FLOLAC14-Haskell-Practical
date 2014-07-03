fstEven :: [Int] -> Int
fstEven [] = error "no even numbers"
fstEven a = if mod (head a) 2 == 0
            then head a
            else fstEven (drop 1 a)
