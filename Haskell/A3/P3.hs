isPrime :: Int -> Bool
isPrime n = (length [x | x <- [1..n], mod n x == 0]) == 2
--If the remainder of n `mod` x is zero it adds it to the list. If there are more than 2 elements in the list, it is not prime

rotate :: Int -> [a] -> [a]
rotate 0 a = a
rotate n a = rotate (n - 1) (tail a ++ [head a])

circle :: [a] -> [[a]]
circle  a = [rotate x a | x <- [1..k]]
    where
        k = length a

isCircPrime :: Int -> Bool
isCircPrime n =  (length (filter isPrime y)) == (length (show n))
--filter returns the list of values of y for which isPrime returns true.
--For a number with n digits, there are n possible rotations. If all of the rotations are prime, isCircPrime returns true.
    where
        y = [read x :: Int | x <- circle(show n)]
        -- show converts the integer to a string, circle gives all the rotation of the string and we preform list comprehension on read to get a list of integers.

-- isPrime :: Int -> Bool  --ft Jurgen Budo
--     isprime n = null[x | x <-[2..n], mod n x ==0] 