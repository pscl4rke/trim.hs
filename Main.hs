

import System.Environment (getArgs)

-- Third party wrapper around Foreign C stuff with ioctl etc
import System.Console.Terminal.Size

import Lining (linesNL, unlinesNL)


main :: IO ()
main = do
    maybeWindow <- size
    let default_width = case maybeWindow of
                            Just (Window { width=width }) -> width
                            Nothing -> 80
    cmdLineArgs <- getArgs
    let width = case cmdLineArgs of
                        [] -> default_width
                        [width_str] -> read width_str -- FIXME handle unparseable
                        _ -> error "too many args"
    interact $ unlinesNL . (map (take width)) . linesNL
