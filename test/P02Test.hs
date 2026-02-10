module P02Test where

import Test.HUnit
import P02
 
p02 :: Test
p02 =
  TestLabel
    "P02"
    $ TestList
      [ TestCase $
          assertEqual
            "myButLast [1,2,3]"
            (Just 2)
            (myButLast ([1, 2, 3] :: [Int])),
        TestCase $
          assertEqual
            "myButLast []"
            Nothing
            (myButLast ([] :: [Int])),
        TestCase $
          assertEqual
            "myButLast [1]"
            Nothing
            (myButLast ([1] :: [Int]))
      ]
