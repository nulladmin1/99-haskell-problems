module P35Test where

import Test.HUnit
import P35

p35 :: Test
p35 =
  TestLabel
  "P35"
  $ TestList
    [ TestCase $
        assertEqual
        "primeFactors 315"
        ([3, 3, 5, 7])
        (primeFactors 315)
    ]

