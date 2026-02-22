module P36Test where

import Test.HUnit
import P36

p36 :: Test
p36 =
  TestLabel
  "P36"
  $ TestList
    [ TestCase $
        assertEqual
        "primeFactorsMult 315"
        ([(3, 2), (5, 1), (7, 1)])
        (primeFactorsMult 315)
    ]

