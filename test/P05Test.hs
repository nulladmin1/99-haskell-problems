module P05Test where

import P05
import Test.HUnit

p05 :: Test
p05 =
  TestLabel
    "P05"
    $ TestList
      [ TestCase $
          assertEqual
            "rev []"
            ([] :: [Int])
            (rev ([] :: [Int])),
        TestCase $
          assertEqual
            "rev [1, 2, 3]"
            ([3, 2, 1] :: [Int])
            (rev ([1, 2, 3] :: [Int]))
      ]
