module Test.Main where

import Prelude
import Control.Monad.Eff (Eff)
import Test.Spec.Runner (RunnerEffects)
import Test.Data.ES6.Symbol (main) as Test

main ∷ Eff (RunnerEffects ()) Unit
main = Test.main
