module P03 where

elemAt :: [a] -> Int -> Maybe a
elemAt [] _ = Nothing
elemAt (_ : _) 0 = Nothing
elemAt (x : _) 1 = Just x
elemAt (_ : xs) n = elemAt xs $ n-1
