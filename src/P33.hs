module P33 where

import P32

coprime :: Int -> Int -> Bool
coprime x y = gcd' x y == 1
