module P16Test where


import Test.HUnit
import P16

p16 :: Test
p16 =
  TestLabel
  "P16"
  $ TestList
    [ TestCase $
        assertEqual
        "dropEvery [] 4"
        ([] :: [Int])
        (dropEvery ([] :: [Int]) 4),
      TestCase $
        assertEqual
        "dropEvery \"abcdefghik\" 3"
        ("abdeghk")
        (dropEvery "abcdefghik" 3)
    ]

