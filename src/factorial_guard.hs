
-- Computes a factorial using guards instead of patmatch
factorial :: Integer -> Integer
factorial n | n == 0 = 1 -- Giving error at compile
            | n /= 0 = n * factorial (n - 1)

main :: IO()
main = do
    print(factorial 3)