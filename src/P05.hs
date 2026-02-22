module P05 where

rev :: [a] -> [a]
rev ls = rev' ls []
  where
    rev' :: [a] -> [a] -> [a]
    rev' [] ys = ys
    rev' (x : xs) ys = rev' xs (x : ys)
