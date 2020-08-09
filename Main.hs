

import System.Environment (getArgs)

-- Third party wrapper around Foreign C stuff with ioctl etc
import System.Console.Terminal.Size


-- NB: The output will always end with a new line, even if the input didn't


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
    interact $ unlines . (map (take width)) . lines
