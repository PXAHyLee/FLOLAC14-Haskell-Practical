-- Define a function myLast that takes a list and returns the last (rightmost)
-- element
--
-- (a) Let the type be myLast :: [a] -> a.
myLast :: [a] -> a
myLast [] = error "list too short"
myLast (x:xs) = if null xs
                then x
                else myLast xs
-- (b) exceptions!
-- (c) redefine myLast by myLast :: [a] -> Maybe a
myLast2 :: [b] -> Maybe b
myLast2 [] = Nothing
myLast2 (x:xs) = if null xs
                 then Just x
                 else myLast2 xs
