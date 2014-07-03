f :: Int -> Char
f = undefined

g :: Int -> Char -> Int
g = undefined

h :: (Char -> Int) -> Int -> Int
h = undefined

x :: Int
x = undefined
y :: Int
y = undefined

c :: Char
c = undefined

-- which of the following expressions are type correct?
-- 1. (g.f) x c ..... NOT type correct
-- 2. (g x . f) y ... type correct
-- 3. (h . g) x y ... type correct
-- 4. (h . g x) c ... NOT type correct
-- 5. h . g x c   ... type correct
