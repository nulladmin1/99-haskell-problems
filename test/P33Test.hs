module P33Test where

import P33
import Test.HUnit

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
