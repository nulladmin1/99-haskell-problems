module P41 where

import P40

goldbachList :: Int -> Int -> [(Int, Int)]
goldbachList x y = map goldbach $ filter even [x .. y]

goldbachList' :: Int -> Int -> Int -> [(Int, Int)]
goldbachList' x y t = filter threshold $ goldbachList x y
  where
    threshold :: (Int, Int) -> Bool
    threshold (i, j) = i > t && j > t
