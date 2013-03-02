module Text.Highlighting.Color.QQ (str) where

import Language.Haskell.TH
import Language.Haskell.TH.Quote

str = QuasiQuoter
  { quoteExp = stringE
  , quotePat = undefined
  , quoteType = undefined
  , quoteDec = undefined
  }
