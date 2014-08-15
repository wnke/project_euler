module Main where

main :: IO ()
main = do
    putStrLn "Project euler p9"
    putStrLn "A Pythagorean triplet is a set of three natural numbers,\ 
    \a < b < c, for which,\n a^2 + b^2 = c^2\n\nFor example, \
    \3^2 + 4^2 = 9 + 16 = 25 = 5^2.\n\nThere exists exactly one Pythagorean \
    \triplet for which a + b + c = 1000.\nFind the product abc."


    let result = (truncate . product . head) [ [a,b,c] |
		a <- [1 .. 1000],
		b <- [a .. 1000], 
		let c = sqrt(a^2 + b^2),
		a + b + c == 1000
		]

    putStrLn "Answer: "
    putStrLn (show result)

    