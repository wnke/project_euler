module Main where

-- monomorphic constant
-- each value is only calculated once
memoized_fib :: Int -> Integer
memoized_fib = (map fib [0 ..] !!)
   where fib 0 = 0
         fib 1 = 1
         fib n = memoized_fib (n-2) + memoized_fib (n-1)


main :: IO ()
main = do
    putStrLn "Project euler p2"
    putStrLn "By considering the terms in the\
     \ Fibonacci sequence whose values do not exceed four million,\
     \ find the sum of the even-valued terms."

    putStrLn "Answer: "

    -- keep in mind lazy evaluation!
    -- create an infinite list [1,2,3 ..] with the index to calc
    -- the fibonacci values
    let indexs = [1,2 ..]

    -- apply the fibonacci function to each index
    let terms = map memoized_fib indexs

    -- filter the even valued ones 
    let even_valued_terms = filter (\x -> x `mod` 2 == 0) terms

    -- only the subset less than or equal to 4 000 000 matter 
    let even_valued_terms_less_than_equal_4M = takeWhile (<=4000000) even_valued_terms

	-- calculate the sum of the subset defined above
    let sum_even_valued_terms_less_than_equal_4M = sum even_valued_terms_less_than_equal_4M

    -- nothing was evaluated until now!
	-- eval and print!
    putStrLn (show sum_even_valued_terms_less_than_equal_4M)

    --all of the above in one line:
    putStrLn (show  (sum (takeWhile (<=4000000) (filter (\x -> x `mod` 2 == 0) (map memoized_fib [1,2 ..])))))
