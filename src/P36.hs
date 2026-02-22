module P36 where

import Data.Tuple
import P10
import P35

primeFactorsMult :: Int -> [(Int, Int)]
primeFactorsMult x = map swap $ encode $ primeFactors x
