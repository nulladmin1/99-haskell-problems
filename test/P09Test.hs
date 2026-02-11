module P09Test where

import P09
import Test.HUnit

p09 :: Test
p09 =
  TestLabel
  "P09"
  $ TestList
    [ TestCase $
        assertEqual
          "pack []"
          ([[]] :: [[Int]])
          (pack ([] :: [Int])),
      TestCase $
        assertEqual
          "pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']"
          (["aaaa","b","cc","aa","d","eeee"])
          (pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'])
    ]

