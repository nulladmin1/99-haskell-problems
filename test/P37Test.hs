module P37Test where

import Test.HUnit
import P37

p37 :: Test
p37 =
  TestLabel
  "P37"
  $ TestList
    [ TestCase $
        assertEqual
        "totientImproved 10"
        (4)
        (totientImproved 10),
      TestCase $
        assertEqual
        "totientImproved' 10"
        (4)
        (totientImproved' 10)
    ]

