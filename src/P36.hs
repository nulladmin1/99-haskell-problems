module P36 where

import P10
import P35
import Data.Tuple

primeFactorsMult :: Int -> [(Int, Int)]
primeFactorsMult x = map swap $ encode $ primeFactors x
