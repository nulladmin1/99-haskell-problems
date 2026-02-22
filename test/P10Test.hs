module P10Test where

import P10
import Test.HUnit

p10 :: Test
p10 =
  TestLabel
    "P10"
    $ TestList
      [ TestCase $
          assertEqual
            "encode []"
            ([])
            (encode ([] :: [Int])),
        TestCase $
          assertEqual
            "encode \"aaaabccaadeeee\""
            ([(4, 'a'), (1, 'b'), (2, 'c'), (2, 'a'), (1, 'd'), (4, 'e')])
            (encode "aaaabccaadeeee")
      ]
