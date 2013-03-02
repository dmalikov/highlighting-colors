{-# LANGUAGE NoOverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE UnicodeSyntax       #-}
module Text.Highlighting.Color (sed) where

import           Data.Default
import           System.FilePath.Posix            (takeFileName)
import           Text.StringTemplate

import           Text.Highlighting.Color.Content
import           Text.Highlighting.Color.Template


sed ∷ FilePath → FilePath → IO ()
sed i o = writeFile o =<< (process . lines) `fmap` readFile i
  where
    process f = toString $ set_attrs (fill f def) (newSTMP html)
    fill f = set_filename fn . set_bgColor (get_bgColor f) . set_fgColor (get_fgColor f) . set_text (map highlight_color f)
    fn = takeFileName i


set_attrs ∷ Content → StringTemplate String → StringTemplate String
set_attrs = setManyAttrib . to_attrs
 where
   to_attrs (Content {_bgColor = bg, _fgColor = fg, _text = t, _filename = fn}) =
     [ ("bgcolor", bg)
     , ("fgcolor", fg)
     , ("content", unlines t)
     , ("filename", fn)
     ]
