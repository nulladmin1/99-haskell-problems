module P39Test where

import P39
import Test.HUnit

p39 :: Test
p39 =
  TestLabel
    "P39"
    $ TestList
      [ TestCase $
          assertEqual
            "primesR 10 20"
            ([11, 13, 17, 19])
            (primesR 10 20)
      ]
