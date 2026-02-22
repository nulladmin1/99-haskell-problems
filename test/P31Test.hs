module P31Test where

import P31
import Test.HUnit

p31 :: Test
p31 =
  TestLabel
    "P31"
    $ TestList
      [ TestCase $
          assertEqual
            "isPrime 0"
            (False)
            (isPrime 0),
        TestCase $
          assertEqual
            "isPrime 7"
            (True)
            (isPrime 7),
        TestCase $
          assertEqual
            "isPrime 21"
            (False)
            (isPrime 21)
      ]
