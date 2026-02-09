module Main (main) where

import P01
import P02
import qualified System.Exit as Exit
import Test.HUnit

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

tests :: Test
tests = TestList [p01, p02]

main :: IO ()
main = do
  c <- runTestTT tests
  if failures c > 0 then Exit.exitFailure else Exit.exitSuccess
