find :: Eq a => a -> [a] -> Int
find _ [] = error "empty list or not in the list"
find x y  = if head y == x
            then 1
            else 1 + find x (tail y)
-- (a) what happens if x is not in the list?
-- Ans: error
--
-- (b) redefine find as the type Eq a => a -> [a] -> Maybe Int

fromJust :: Maybe a -> a
fromJust Nothing = error "Nothing"
fromJust (Just a)  = a


find2 :: Eq a => a -> [a] -> Maybe Int
find2 _ [] = error "element not found"
find2 x (y:ys) = if y == x
                  then Just 1
                  else Just (1 + fromJust (find2 x ys))
