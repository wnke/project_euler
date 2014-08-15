module Main where

main :: IO ()
main = do
    putStrLn "Project euler p1"
    putStrLn "Find the sum of all the multiples of 3 or 5 below 1000"
    putStrLn "Answer: "

    {-
		sum of k such that k is drawn from the list [1,2,3 .. 999] 
			and k is multiple of 3 or multiple of 5
    -}
    putStrLn (show (sum [k | k <- [1 .. 999], mod k 3 == 0 || k`mod`5 == 0]))    }
