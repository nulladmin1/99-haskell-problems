module P40Test where

import P40
import Test.HUnit

p40 :: Test
p40 =
  TestLabel
    "P40"
    $ TestList
      [ TestCase $
          assertEqual
            "goldbach 28"
            ((5, 23))
            (goldbach 28),
        TestCase $
          assertEqual
            "goldbach 22"
            ((3, 19))
            (goldbach 22)
      ]
