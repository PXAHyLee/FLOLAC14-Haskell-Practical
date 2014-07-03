-- with the option -XDataKinds
-- don't use 'n+k pattern', which is not supported in Haskell 2010

-- Define what is mentioned on the slides
data N = Zero
         | Suc N
          deriving (Show, Eq)

-- I define plus rather than (+)
plus :: N -> N -> N
plus Zero n = n
plus (Suc m) n = Suc (plus m n)

-- 1. Define mul :: N -> N -> N using addition (plus)
mul :: N -> N -> N
mul _ Zero    = Zero
mul m (Suc n) = plus (mul m n) m


-- 2. Define myMin :: N -> N -> N
-- now, define myMin
myMin :: N -> N -> N
myMin Zero _ = Zero
myMin (Suc n) m = if myMin n m == n
                  then Suc n
                  else m

-- 3. Define elemAt :: N -> [a] -> a
elemAt :: N -> [a] -> a
elemAt _ [] = error "index too large!"
elemAt Zero    x  = head x 
elemAt (Suc n) x  = elemAt n (tail x)

-- 4. Define insertAt :: N -> a -> [a] -> [a]
insertAt :: N -> a -> [a] -> [a]
insertAt Zero x xs       = x : xs
insertAt (Suc Zero) _ [] = error "list too short!"
insertAt (Suc n) x xs    = head xs : insertAt n x (tail xs)
