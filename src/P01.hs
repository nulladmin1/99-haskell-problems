module P01 where

import Data.List (uncons)

myLast :: [a] -> Maybe a
myLast [] = Nothing
myLast xs = Just $ last xs

myLast' :: [a] -> Maybe a
myLast' = fmap fst . uncons . reverse
