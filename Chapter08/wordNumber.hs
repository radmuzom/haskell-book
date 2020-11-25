module WordNumber where

import Data.List (intersperse)

digitToWord :: Int -> String
digitToWord n
    | n == 1 = "One"
    | n == 2 = "Two"
    | n == 3 = "Three"
    | n == 4 = "Four"
    | n == 5 = "Five"
    | n == 6 = "Six"
    | n == 7 = "Seven"
    | n == 8 = "Eight"
    | n == 9 = "Nine"
    | n == 0 = "Zero"

digits :: Int -> [Int]
digits n
    | n < 10 = [n]
    | otherwise = digits (div n 10) ++ [(mod n 10)]

wordNumber :: Int -> String
wordNumber n = concat(intersperse "-" (map digitToWord (digits n)))