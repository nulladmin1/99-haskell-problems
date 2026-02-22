module P35Test where

import P35
import Test.HUnit

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
