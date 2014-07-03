-- Define a function half
-- half :: n -> Either n n
half :: Integral b => b -> Either b b
half n = if mod n 2 == 0
         then Left (div n 2)
         else Right (div (n - 1) 2)
