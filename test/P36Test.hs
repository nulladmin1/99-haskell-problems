module P36Test where

import P36
import Test.HUnit

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
