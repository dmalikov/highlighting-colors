{-# LANGUAGE UnicodeSyntax #-}
module Main (main) where

import           Data.Maybe

import           Control.Applicative
import           Options.Applicative

import           Text.Highlighting.Color


main ∷ IO ()
main = execParser opts >>= subs
  where
    opts = info (helper <*> opt_parser)
      ( fullDesc
     <> progDesc "Highlight all #COLORS in html format"
     <> header "colors-highlighter - quasised templater wrapping up colors wiht html tags"
      )


data Configuration = Configuration
  { input_file ∷ String
  , output_file ∷ Maybe String
  }


opt_parser ∷ Parser Configuration
opt_parser = Configuration
  <$> argument str (metavar "FILE")
  <*> optional (strOption (long "output" <> short 'o' <> help "output file"))


subs ∷ Configuration → IO ()
subs (Configuration {input_file = i, output_file = o}) =
  sed i $ fromMaybe (i ++ ".html") o
