module P01Test where

import P01
import Test.HUnit

p01 :: Test
p01 =
  TestLabel
    "P01"
    $ TestList
      [ TestCase $
          assertEqual
            "myLast [1,2,3]"
            (Just 3)
            (myLast ([1, 2, 3] :: [Int])),
        TestCase $
          assertEqual
            "myLast []"
            Nothing
            (myLast ([] :: [Int])),
        TestCase $
          assertEqual
            "myLast' []"
            Nothing
            (myLast' ([] :: [Int])),
        TestCase $
          assertEqual
            "myLast' [1,2,3]"
            (Just 3)
            (myLast' ([1, 2, 3] :: [Int]))
      ]
