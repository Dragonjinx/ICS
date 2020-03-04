circle :: [a] -> [[a]]
circle  a = [((drop x a) ++ (take x a)) | x <- [1..k]]
    where
        k = length a