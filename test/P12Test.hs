module P12Test where

import P11
import P12
import Test.HUnit

p12 :: Test
p12 =
  TestLabel
    "P12"
    $ TestList
      [ TestCase $
          assertEqual
            "decodeModified []"
            ([] :: [Int])
            (decodeModified ([])),
        TestCase $
          assertEqual
            "decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']"
            ("aaaabccaadeeee")
            (decodeModified [Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e'])
      ]
