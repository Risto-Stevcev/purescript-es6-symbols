module Test.Data.ES6.Symbol where

import Data.ES6.Symbol

import Control.Monad.Eff (Eff)
import Prelude (Unit, unit, discard)
import Test.Spec (describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (RunnerEffects, run)

foreign import isSymbol ∷ Symbol → Boolean

main ∷ Eff (RunnerEffects ()) Unit
main = run [consoleReporter] do
  describe "purescript-es6-symbols" do
    describe "Symbol" do
      it "should return Symbols from the constructors" do
        let s = symbol unit
            s' = symbol' "foo"

        isSymbol s `shouldEqual` true
        isSymbol s' `shouldEqual` true
        isSymbol iterator `shouldEqual` true
