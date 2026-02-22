module P37 where

import P36

totientImproved :: Int -> Int
totientImproved x = foldr phi 1 $ primeFactorsMult x
  where
    phi :: (Int, Int) -> Int -> Int
    phi (p, m) acc = (p - 1) * p ^ (m - 1) * acc

totientImproved' :: Int -> Int
totientImproved' x = product $ map f $ primeFactorsMult x
  where
    f :: (Int, Int) -> Int
    f (p, m) = (p - 1) * p ^ (m-1)
