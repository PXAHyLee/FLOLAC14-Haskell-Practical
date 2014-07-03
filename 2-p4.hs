-- What are the types of the following expressions?
--
-- (a) \x -> (snd x, fst x)
--     (a, b) -> (b, a)
lambda1 = \x -> (snd x, fst x)
-- (b) \f x -> f x x
--     (a -> a -> b) -> a -> b
lambda2 = \f x -> f x x
-- (c) myEither
--     (a -> b) -> (a -> b) -> Either x1 x2 -> b
myEither f g x = case x of
                   Left y -> f y
                   Right z -> g z
