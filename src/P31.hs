module P31 where

isPrime :: Int -> Bool
isPrime x
  | x < 2 = False
  | otherwise = not $ any (\n -> x `mod` n == 0) [2..(div x 2)]
