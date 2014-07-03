twice :: (a -> a) -> a -> a
twice f = f . f

square :: Int -> Int
square x = x * x

quad :: Int -> Int
quad = twice square
