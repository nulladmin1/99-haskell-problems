module P01 where

import Data.List (uncons)

myLast :: [a] -> Maybe a
myLast [] = Nothing
myLast xs = Just $ last xs

myLast2 :: [a] -> Maybe a
myLast2 xs = fmap fst $ uncons $ reverse xs
