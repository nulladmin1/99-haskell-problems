module P14Test where

import Test.HUnit
import P14

p14 :: Test
p14 =
  TestLabel
  "P14"
  $ TestList
    [ TestCase $
        assertEqual
        "dupe []"
        ([] :: [Int])
        (dupe ([] :: [Int])),
      TestCase $
        assertEqual
        "dupe [1, 2, 3]"
        ([1, 1, 2, 2, 3, 3] :: [Int])
        (dupe ([1, 2, 3] :: [Int])),
      TestCase $
        assertEqual
        "dupe [1]"
        ([1, 1] :: [Int])
        (dupe ([1] :: [Int]))
    ]

