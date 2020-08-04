

-- NB: The output will always end with a new line, even if the input didn't


trim :: String -> String
trim xs = xs


main :: IO ()
main = do
    interact $ unlines . (map trim) . lines
