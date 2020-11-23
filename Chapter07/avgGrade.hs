avgGrade :: (Fractional a, Ord a) => a -> Char

avgGrade x
    | y >= 0.9 = 'A'
    | y >= 0.8 = 'B'
    | y >= 0.7 = 'C'
    | otherwise = 'F'
    where y = x / 100