-- 2.3 A
greg :: Integer -> Bool
greg n = ((n `mod` 4 == 0) && (n `mod` 100 /= 0)) || (n `mod` 400 == 0)

-- 2.3 B
coolgreg :: Integer -> Bool
coolgreg n  | ((n `mod` 400) == 0) = True
            | ((n `mod` 100) == 0) = False
            | ((n `mod` 100) /= 0) = gregor n
                where
                gregor :: Integer -> Bool
                gregor n | ((n `mod` 4) == 0) = True
                         | otherwise = False

--2.4 A:
rotate :: Int -> [a] -> [a]
rotate 0 a = a
rotate n a = rotate (n - 1) (tail a ++ [head a])
-- Head a is a single 'thing' so I have to include [] around it for ++ to work. : ^)

--2.4 B:
circle :: [a] -> [[a]]
circle  a = [rotate x a | x <- [1..k]]
    where
        k = length a