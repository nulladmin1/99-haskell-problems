module P02Test where

import P02
import Test.HUnit

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
