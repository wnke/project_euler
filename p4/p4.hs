module Main where


main :: IO ()
main = do
    putStrLn "Project euler p4"
    putStrLn "Find the largest palindrome made from the product of two 3-digit numbers."

    let result =  maximum [x*y|
  	  		x <-[100 .. 999], 	
    		y <-[100 .. 999],
    		-- palindrome test
    		-- turn the number in a char list
    		-- then compare it to it's reverse and check if equals
    		-- holds true 
    		show (x*y)  == reverse(show(x*y))];

    putStrLn "Answer: "
    putStrLn (show result)