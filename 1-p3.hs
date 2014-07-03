smaller :: Int -> Int -> Int
smaller x y = if x <= y
              then x
              else y

st3 :: Int -> Int
st3 = smaller 3
