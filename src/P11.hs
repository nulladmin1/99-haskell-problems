module P11 where

import P10

data ListItem a = Single a | Multiple Int a
  deriving (Show, Eq)

encodeModified :: Eq a => [a] -> [ListItem a]
encodeModified = map helper . encode
  where
    helper :: (Int, a) -> ListItem a
    helper (1, x) = Single x
    helper (n, x) = Multiple n x
