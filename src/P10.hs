module P10 where

import P04
import P09 

encode :: (Eq a) => [a] -> [(Int, a)]
encode [] = []
encode lst = map (\x -> (len x, head x)) $ pack lst
