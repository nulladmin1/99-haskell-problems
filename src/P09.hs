module P09 where

import P05

pack :: (Eq a) => [a] -> [[a]]
pack [] = [[]]
pack lst = pack' lst []
  where
    pack' :: (Eq a) => [a] -> [[a]] -> [[a]]
    pack' [] acc = rev acc
    pack' (x : xs) acc = pack' s $ f : acc
      where
        (f, s) = span (== x) $ x : xs
