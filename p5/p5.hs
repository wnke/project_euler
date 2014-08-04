module Main where


-- to use primes 
-- that is an infinite list with all primes
import Data.Numbers.Primes
import Data.Map (toList, fromListWith)
import Data.List
-- from p3.hs
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



-- find the least common multiple using prime factorization
-- http://en.wikipedia.org/wiki/Least_common_multiple#Finding_least_common_multiples_by_prime_factorization
smallestMult :: [Integer] -> Integer
smallestMult [] = undefined
--smallestMult [x] = x

smallestMult xs = let 
    -- create a list of lists containing the prime factores
    -- of each number each
    primeFactorsOfxs = map factors xs

    -- aux function to create a list of tuples
    -- (value, count) to be used on eache list created above
    count ys = toList $ fromListWith (+) [(y, 1) | y <- ys]

    --use the function above and merge the lists
    primeCountRepeated = concat $ map count primeFactorsOfxs

    -- select only the prime factores with the higher countage
    primeCount = toList $ fromListWith max primeCountRepeated

    -- calculate the product of each prime ^ (prime max count)
    in product $ map (\(x,y) -> x^y) primeCount

main :: IO ()
main = do
    putStrLn "Project euler p5"
    putStrLn "What is the smallest positive number\
    \ that is evenly divisible by all \
    \of the numbers from 1 to 20?"



    let result = smallestMult [1..20]

    putStrLn "Answer: "
    putStrLn (show result)