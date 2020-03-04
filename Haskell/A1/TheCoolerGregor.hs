coolgreg :: Integer -> Bool
coolgreg n  | ((n `mod` 400) == 0) = True
            | ((n `mod` 100) == 0) = False
            | ((n `mod` 100) /= 0) = gregor n
                where
                gregor :: Integer -> Bool
                gregor n | ((n `mod` 4) == 0) = True
                         | otherwise = False