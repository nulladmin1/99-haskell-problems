module P03Test where

import Test.HUnit
import P03

p03 :: Test
p03 =
  TestLabel
    "P03"
    $ TestList
      [ TestCase $
          assertEqual 
            "elemAt [] 10"
            (Nothing)
            (elemAt ([] :: [Int]) 10),
        TestCase $
          assertEqual 
            "elemAt [1, 2, 3] 10"
            (Nothing)
            (elemAt ([1, 2, 3] :: [Int]) 10),
        TestCase $
          assertEqual 
            "elemAt [1, 2, 3] 0"
            (Nothing)
            (elemAt ([1, 2, 3] :: [Int]) 0), 
        TestCase $
          assertEqual 
            "elemAt [4, 7, 3, 6, 8] 4"
            (Just 6)
            (elemAt ([4, 7, 3, 6, 8] :: [Int]) 4)
      ]

