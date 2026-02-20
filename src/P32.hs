module P32 where

gcd' :: Int -> Int -> Int
gcd' a 0 = abs a
gcd' a b = gcd' b $ mod a b
