module P35 where

primeFactors :: Int -> [Int]
primeFactors n = f n 2
  where
    f :: Int -> Int -> [Int]
    f x y
      | x == 1 = []
      | mod x y == 0 = y : f (div x y) y
      | otherwise = f x $ y + 1
