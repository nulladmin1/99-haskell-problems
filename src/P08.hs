module P08 where

import P09

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress xs = map head $ pack xs
