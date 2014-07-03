-- Define a function swap :: (a, b) -> (b, a)

-- (a) Define swap using pattern matching
swap1 :: (a, b) -> (b, a)
swap1 (a, b) = (b, a)

-- (b) Define swap using fst and snd
swap2 :: (a, b) -> (b, a)
swap2 t = (snd t, fst t)

-- (c) Define swap using case
swap3 :: (a, b) -> (b, a)
swap3 z = case z of
            (a, b)    ->  (b, a)
