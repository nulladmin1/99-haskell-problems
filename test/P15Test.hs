module P15Test where

import Test.HUnit
import P15

p15 :: Test
p15 =
  TestLabel
  "P15"
  $ TestList
    [ TestCase $
        assertEqual
        "repli [] 4"
        ([] :: [Int])
        (repli ([] :: [Int]) 4),
      TestCase $
        assertEqual
        "repli \"abc\" 3"
        ("aaabbbccc")
        (repli "abc" 3),
      TestCase $
        assertEqual
        "repli' [] 4"
        ([] :: [Int])
        (repli' ([] :: [Int]) 4),
      TestCase $
        assertEqual
        "repli' \"abc\" 3"
        ("aaabbbccc")
        (repli' "abc" 3)
    ]

