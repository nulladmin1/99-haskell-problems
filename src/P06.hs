module P06 where

import P05

palindrome :: (Eq a) => [a] -> Bool
palindrome [] = False
palindrome [_] = False
palindrome xs =
  xs == (rev xs)
