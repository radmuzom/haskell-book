dividedBy :: Integral a => a -> a -> a
dividedBy num denom
    | denom < 0 && num > 0 = (-1) * (go num (-denom) 0)
    | denom > 0 && num < 0 = (-1) * (go (-num) denom 0)
    | denom < 0 && num < 0 = go (-num) (-denom) 0
    | otherwise = go num denom 0
    where
        go n d count
            | n < d = count
            | otherwise = go (n - d) d (count + 1)