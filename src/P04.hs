module P04 where

len :: [a] -> Int
len xs = lenR xs 0 
    where
        lenR :: [a] -> Int -> Int
        lenR [] n = n
        lenR (_ : lst) n = lenR lst $ n + 1 
