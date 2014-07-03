-- for delete
import Data.List
perm :: Eq a => [a] -> [[a]]
perm [] = [[]]
perm xs = [x:ys | x <- xs, ys <- perm (delete x xs)]
