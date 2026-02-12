module P12 where

import P11

unencode :: [(Int, a)] -> [a]
unencode [] = []
unencode lst = concatMap (\(n, x) -> replicate n x) lst

decodeModified :: Eq a => [ListItem a] -> [a]
decodeModified = unencode . map helper
  where
    helper :: ListItem a -> (Int, a)
    helper (Single x) = (1, x)
    helper (Multiple n x) = (n, x)
