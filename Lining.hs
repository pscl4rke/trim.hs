
module Lining where

import Data.List (intercalate)
import Data.List.Split (splitOn)

{-|

Well, this is awkward...

Haskell has `lines` and `unlines` built-in and readily available.
And they're even POSIX-compliant, by ensuring that the text output
always ends the last line with a newline character.

Unfortunately that isn't the behaviour we want here.  If the input
is missing the trailing newline character then we want its absence
reflected in the output too.

-}

linesNL :: String -> [String]
linesNL x = splitOn "\n" x

unlinesNL :: [String] -> String
unlinesNL xs = intercalate "\n" xs
