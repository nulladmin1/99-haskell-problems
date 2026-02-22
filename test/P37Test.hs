module P37Test where

import P37
import Test.HUnit

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
