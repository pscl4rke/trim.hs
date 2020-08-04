

import System.Environment (getArgs)


-- NB: The output will always end with a new line, even if the input didn't


main :: IO ()
main = do
    let default_width = 20 -- FIXME look up current terminal size
    cmdLineArgs <- getArgs
    let width = case cmdLineArgs of
                        [] -> default_width
                        [width_str] -> read width_str -- FIXME handle unparseable
                        _ -> error "too many args"
    interact $ unlines . (map (take width)) . lines
