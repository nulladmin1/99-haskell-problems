module P15 where

import P05

repli :: [a] -> Int -> [a]
repli [] _ = []
repli lst ns = helper lst ns []
  where
    helper :: [a] -> Int -> [a] -> [a]
    helper [] _ acc = rev acc
    helper (x : xs) n acc = helper xs n $ (replicate n x) ++ acc

repli' :: [a] -> Int -> [a]
repli' lst n = concatMap (replicate n) lst
