module P11Test where

import P11
import Test.HUnit

p11 :: Test
p11 =
  TestLabel
  "P11"
  $ TestList
    [ TestCase $
        assertEqual
          "encodeModified []"
          ([])
          (encodeModified ([] :: [Int])),
      TestCase $
        assertEqual
          "encodeModified \"aaaabccaadeeee\""
          ([Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e'])
          (encodeModified "aaaabccaadeeee")
    ]

