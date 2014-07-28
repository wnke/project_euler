module Main where

main :: IO ()
main = do
    putStrLn "Project euler p1"
    putStrLn "Find the sum of all the multiples of 3 or 5 below 1000"
    putStrLn "Answer: "
    putStrLn (show (sum [k | k <- [1 .. 999], k`mod`3 == 0 || k`mod`5 == 0]))