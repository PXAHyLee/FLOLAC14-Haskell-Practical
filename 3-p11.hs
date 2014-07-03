-- for inits, delete
import Data.List()

-- the following is a demo program
--
-- main :: IO ()
-- main = print $ inits [1,2,3]
--
-- print [[],[1],[1,2],[1,2,3]]

myInits :: [a] -> [[a]]
myInits [] = [[]]
myInits x  = myInits (take (length x - 1) x) ++ [x]

myTails :: [a] -> [[a]]
myTails [] = [[]]
myTails x  = x : myTails (tail x)
