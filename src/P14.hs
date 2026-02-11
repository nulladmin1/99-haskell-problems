module P14 where

import P05

dupe :: [a] -> [a]
dupe lst = dupe' lst []
    where
        dupe' :: [a] -> [a] -> [a]
        dupe' [] acc = rev acc
        dupe' (x : xs) acc = dupe' xs $ x : x : acc
