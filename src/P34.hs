module P34 where

import P04
import P33 (coprime)

totient :: Int -> Int
totient 1 = 1
totient x = len $ filter (coprime x) [1..x]
