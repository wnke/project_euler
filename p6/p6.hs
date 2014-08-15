module Main where


main :: IO ()
main = do
    putStrLn "Project euler p6"
    putStrLn "Find the difference between the sum of the squares of the first \
    	\one hundred natural numbers and the square of the sum."

	
    let n = 100
    let sumOfSquares  =  sum $ map (^2) [1 .. n]
    let squareOfSums  = (sum [1 .. n] ^ 2)

    let result = squareOfSums - sumOfSquares

    putStrLn "Answer: "
    putStrLn (show result)