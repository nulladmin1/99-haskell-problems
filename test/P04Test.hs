module P04Test where

import Test.HUnit
import P04

p04 :: Test
p04 =
  TestLabel
    "P04"
    $ TestList
      [ TestCase $
          assertEqual 
            "len []"
            (0)
            (len []),
        TestCase $
          assertEqual 
            "len [1, 2, 3]"
            (3)
            (len ([1, 2, 3] :: [Int]))
      ]

