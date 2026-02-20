module P31Test where


import Test.HUnit
import P31

p31 :: Test
p31 =
  TestLabel
  "P31"
  $ TestList
    [ TestCase $
        assertEqual
        "isPrime 0"
        (False)
        (isPrime 0),
      TestCase $
        assertEqual
        "isPrime 7"
        (True)
        (isPrime 7),
      TestCase $
        assertEqual
        "isPrime 21"
        (False)
        (isPrime 21)
    ]

