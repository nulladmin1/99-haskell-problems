module Main (main) where

import P01Test
import P02Test
import P03Test
import P04Test
import P05Test
import P06Test
import P07Test
import P08Test
import P09Test
import P10Test
import P11Test
import P12Test
import P14Test
import P15Test
import Test.HUnit

tests :: Test
tests = TestList [p01, p02, p03, p04, p05, p06, p07, p08, p09, p10, p11, p12, p14, p15]

main :: IO ()
main = do
  runTestTTAndExit tests
