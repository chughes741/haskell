
-- Function returns the factorial of a number
factorial :: Integer -> Integer 
factorial 0 = 1 
factorial n = n * factorial (n - 1) 

main :: IO()
main = do 
   print (factorial 3)
