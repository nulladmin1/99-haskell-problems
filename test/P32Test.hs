module P32Test where

import P32
import Test.HUnit

p32 :: Test
p32 =
  TestLabel
    "P32"
    $ TestList
      [ TestCase $
          assertEqual
            "gcd' 36 63"
            (9)
            (gcd' 36 63),
        TestCase $
          assertEqual
            "gcd' -3 -6"
            (3)
            (gcd' (-3) (-6)),
        TestCase $
          assertEqual
            "gcd' -3 6"
            (3)
            (gcd' (-3) 6)
      ]
