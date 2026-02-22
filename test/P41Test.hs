module P41Test where

import P41
import Test.HUnit

p41 :: Test
p41 =
  TestLabel
    "P41"
    $ TestList
      [ TestCase $
          assertEqual
            "goldbachList 9 20"
            ([(3, 7), (5, 7), (3, 11), (3, 13), (5, 13), (3, 17)])
            (goldbachList 9 20),
        TestCase $
          assertEqual
            "goldbachList' 4 2000 50"
            ([(73, 919), (61, 1321), (67, 1789), (61, 1867)])
            (goldbachList' 4 2000 50)
      ]
