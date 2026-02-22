module P07Test where

import P07
import Test.HUnit

p07 :: Test
p07 =
  TestLabel
    "P07"
    $ TestList
      [ TestCase $
          assertEqual
            "flatten (List [1, 2, 3, 4, 5])"
            ([1, 2, 3, 4, 5] :: [Int])
            (flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])),
        TestCase $
          assertEqual
            "flatten (List [])"
            ([] :: [Int])
            (flatten (List [])),
        TestCase $
          assertEqual
            "flatten (Elem 5)"
            ([5] :: [Int])
            (flatten (Elem 5))
      ]
