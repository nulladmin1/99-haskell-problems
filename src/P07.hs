module P07 where

data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten lst = flatten' lst []
  where
    flatten' :: NestedList a -> [a] -> [a]
    flatten' (Elem a) acc = a : acc
    flatten' (List []) acc = acc
    flatten' (List (x : xs)) acc = flatten' x $ flatten' (List xs) acc
