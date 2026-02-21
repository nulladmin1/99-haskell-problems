module P34Test where

import Test.HUnit
import P34

p34 :: Test
p34 =
  TestLabel
  "P34"
  $ TestList
    [ TestCase $
        assertEqual
        "totient 10"
        (4)
        (totient 10)
    ]

