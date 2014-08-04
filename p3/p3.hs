module Main where

-- to use primes 
-- that is an infinite list with all primes
import Data.Numbers.Primes


-- target number to factorize
targetNumber :: Integer
targetNumber = 600851475143

-- function that receives a number and 
-- returns it's prime factores

factors :: Integer -> [Integer]
factors 0 = [] 
factors 1 = []
factors n 
		-- if the number is equal to the prime, all done
		| factor == n = [n]
		-- else devide the number by the prime and repeat
		| otherwise = factor : factors (n `div` factor)
		-- find the lowest prime that divides evenly the number
		where factor = head (filter (\x -> n `mod` x == 0) primes) 


main :: IO ()
main = do
    putStrLn "Project euler p3"
    putStrLn "What is the largest prime factor of the number 600851475143 "


    putStrLn "Answer: "
    putStrLn (show (last (factors (targetNumber))))

    