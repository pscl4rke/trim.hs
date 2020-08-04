

-- NB: The output will always end with a new line, even if the input didn't


main :: IO ()
main = do
    let width = 20
    interact $ unlines . (map (take width)) . lines
