module P39 where

import P31

primesR :: Int -> Int -> [Int]
primesR start end = filter isPrime [start .. end]
