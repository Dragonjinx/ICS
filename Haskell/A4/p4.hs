
isPrime :: Int -> Bool
isPrime n = (length [x | x <- [1..n], mod n x == 0]) == 2


isSpecialPrime :: Int -> Bool
isSpecialPrime n | isPrime n == False = False --The number is not a special prime if the number is not a prime at all.
                 | n <  5 = False --Excluding special cases
                 | isPrime ((n-1) `div` 2) == True = False --This excludes the case where the prime is the sum: p + p + 1 where p is a prime number.
                 | ((maximum (filter isPrime [1..((n-1) `div` 2)])) + (minimum(filter isPrime [((n-1) `div` 2)..(n-1)])) + 1) == n = True
                -- We use this because if two primes are to add up to (n - 1), they must be close to ((n - 1) / 2) otherwise their sum will be bigger than (n - 1)
                 | otherwise = False
                 
