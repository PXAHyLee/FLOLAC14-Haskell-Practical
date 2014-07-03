quad :: Int -> Int
quad x = x * x * x * x

twice :: (a -> a) -> a -> a
twice f x = f (f x)

quad2 x = twice quad x
