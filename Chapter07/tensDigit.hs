tensDigit :: Integral a => a -> a
tensDigit x = d
    where (d, _) = divMod x 10

hunsD x
    | x < 100 = 0
    | otherwise = d2
    where (d2, _) = divMod x 100