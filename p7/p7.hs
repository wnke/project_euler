module Main where

import Data.Numbers.Primes

main :: IO ()
main = do
    putStrLn "Project euler p7"
    putStrLn "What is the 10 001st prime number?"

	-- primes starts from 0
    let result = primes !! 10000

    putStrLn "Answer: "
    putStrLn (show result)

    