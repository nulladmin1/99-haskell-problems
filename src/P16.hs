module P16 where

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery [x] _ = [x]
dropEvery xs n = take (n - 1) xs ++ dropEvery (drop n xs) n
