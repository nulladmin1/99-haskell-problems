module P33Test where

import Test.HUnit
import P33

p33 :: Test
p33 =
  TestLabel
  "P33"
  $ TestList
    [ TestCase $
        assertEqual
        "coprime 35 64"
        (True)
        (coprime 35 64)
    ]

