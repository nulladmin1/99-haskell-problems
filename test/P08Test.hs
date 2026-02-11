module P08Test where

import P08
import Test.HUnit

p08 :: Test
p08 =
  TestLabel
  "P08"
  $ TestList
    [ TestCase $
        assertEqual
          "compress []"
          ([] :: [Int])
          (compress ([] :: [Int])),
      TestCase $
        assertEqual
          "compress \"aaaabccaadeeee\""
          ("abcade")
          (compress "aaaabccaadeeee")
    ]

