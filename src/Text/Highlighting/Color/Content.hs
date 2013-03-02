{-# LANGUAGE UnicodeSyntax #-}
module Text.Highlighting.Color.Content where

import           Data.Default
import           Text.Regex
import           Text.Regex.TDFA

import           Data.Maybe      (listToMaybe)

type Color = String
type Source = [String]

data Content = Content
  { _bgColor ∷ Color
  , _fgColor ∷ Color
  , _text ∷ Source
  , _filename :: String
  }

instance Default Content where
  def = Content
    { _bgColor = "#FFFFFF"
    , _fgColor = "#000000"
    , _text = []
    , _filename = ""
    }


-- | getters
color_regex ∷ String
color_regex = "(#[0-9a-fA-F]{1,6})"

get_color ∷ String → Color
get_color = (=~ color_regex)

get_bgColor ∷ Source → Maybe Color
get_bgColor = listToMaybe . map get_color . filter (=~ ("(B|b)ackground(.*)" ++ color_regex))

get_fgColor ∷ Source → Maybe Color
get_fgColor = listToMaybe . map get_color . filter (=~ ("(F|f)oreground(.*)" ++ color_regex))


-- | setters
set_bgColor ∷ Maybe Color → Content → Content
set_bgColor (Just clr) (Content {_fgColor = f, _text = t, _filename = fn}) = Content {_bgColor = clr, _fgColor = f, _text = t, _filename = fn}
set_bgColor Nothing c = c

set_fgColor ∷ Maybe Color → Content → Content
set_fgColor (Just clr) (Content {_bgColor = b, _text = t, _filename = fn}) = Content {_bgColor = b, _fgColor = clr, _text = t, _filename = fn}
set_fgColor Nothing c = c

set_text ∷ Source → Content → Content
set_text file (Content {_bgColor = b, _fgColor = f, _filename = fn}) = Content {_bgColor = b, _fgColor = f, _text = file, _filename = fn}

set_filename ∷ String → Content → Content
set_filename s (Content {_bgColor = b, _fgColor = f, _text = t}) = Content {_bgColor = b, _fgColor = f, _text = t, _filename = s}

highlight_color ∷ String → String
highlight_color is = subRegex (mkRegex color_regex) is "<span style=\"color:\\1\">\\1</span>"
