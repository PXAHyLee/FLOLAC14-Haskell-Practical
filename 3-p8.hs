splitLR :: [Either a b] -> ([a], [b])
splitLR []             = ([], [])
splitLR (Left a : xs)  = (a : fst (splitLR xs), snd (splitLR xs))
splitLR (Right b : xs) = (fst (splitLR xs), b : snd (splitLR xs))
