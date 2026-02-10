module Main (main) where

import P01
import P02
import P03
import qualified System.Exit as Exit
import Test.HUnit

tests :: Test
tests = TestList [p01, p02, p03]

main :: IO ()
main = do
  c <- runTestTT tests
  if failures c > 0 then Exit.exitFailure else Exit.exitSuccess

p01 :: Test
p01 =
  TestLabel
    "P01"
    $ TestList
      [ TestCase $
          assertEqual
            "myLast [1,2,3]"
            (Just 3)
            (myLast ([1, 2, 3] :: [Int])),
        TestCase $
          assertEqual
            "myLast []"
            Nothing
            (myLast ([] :: [Int])),
        TestCase $
          assertEqual
            "myLast' []"
            Nothing
            (myLast' ([] :: [Int])),
        TestCase $
          assertEqual
            "myLast' [1,2,3]"
            (Just 3)
            (myLast' ([1, 2, 3] :: [Int]))
      ]

p02 :: Test
p02 =
  TestLabel
    "P02"
    $ TestList
      [ TestCase $
          assertEqual
            "myButLast [1,2,3]"
            (Just 2)
            (myButLast ([1, 2, 3] :: [Int])),
        TestCase $
          assertEqual
            "myButLast []"
            Nothing
            (myButLast ([] :: [Int])),
        TestCase $
          assertEqual
            "myButLast [1]"
            Nothing
            (myButLast ([1] :: [Int]))
      ]

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
