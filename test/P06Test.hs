module P06Test where

import Test.HUnit
import P06

p06 :: Test
p06 =
  TestLabel
  "P06"
  $ TestList
    [ TestCase $
        assertEqual
          "palindrome []"
          (False)
          (palindrome ([] :: [Int])),
      TestCase $
        assertEqual
          "palindrome [1, 2, 3]"
          (False)
          (palindrome ([1, 2, 3] :: [Int])),
      TestCase $
        assertEqual
          "palindrome \"madamimadam\""
          (True)
          (palindrome "madamimadam")
    ]

