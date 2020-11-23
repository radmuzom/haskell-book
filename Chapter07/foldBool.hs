foldBool3 :: a -> a -> Bool -> a
foldBool3 x _ False = x
foldBool3 _ y True = y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y b =
    case b of
        False -> x
        True -> y

foldBool :: a -> a -> Bool -> a
foldBool x y b
    | b = y
    | otherwise = x