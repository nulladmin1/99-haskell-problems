module P40 where

import qualified Data.IntSet as IntSet
import P39

goldbach :: Int -> (Int, Int)
goldbach n = findTuple primes
  where
    primes = primesR 2 n
    set = IntSet.fromList primes

    findTuple :: [Int] -> (Int, Int)
    findTuple [] = (0, 0)
    findTuple (x : xs)
      | IntSet.member comp set = (x, comp)
      | otherwise = findTuple xs
      where
        comp = n - x
