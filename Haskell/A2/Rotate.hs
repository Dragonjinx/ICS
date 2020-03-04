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