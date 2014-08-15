module Main where

import Data.Numbers.Primes

main :: IO ()
main = do
    putStrLn "Project euler p10"
    putStrLn "The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.\ 
    \Find the sum of all the primes below two million."

    -- primes lib just makes this too easy
    let result = sum $ takeWhile (<2000000) primes

    putStrLn "Answer: "
    putStrLn (show result)

    