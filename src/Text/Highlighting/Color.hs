{-# LANGUAGE NoOverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE UnicodeSyntax       #-}
module Text.Highlighting.Color (sed) where

import           Data.Default
import           Text.StringTemplate

import           Text.Highlighting.Color.Content
import           Text.Highlighting.Color.Template


sed ∷ FilePath → FilePath → IO ()
sed i o = writeFile o =<< (process . lines) `fmap` readFile i
  where
    process f = toString $ set_attrs (fill f def) (newSTMP html)
    fill f = set_bgColor (get_bgColor f) . set_fgColor (get_fgColor f) . set_text (map highlight_color f)


set_attrs ∷ Content → StringTemplate String → StringTemplate String
set_attrs = setManyAttrib . to_attrs
  where
    to_attrs c =
      [ ("bgcolor", _bgColor c)
      , ("fgcolor", _fgColor c)
      , ("content", unlines $ _text c)
      ]
