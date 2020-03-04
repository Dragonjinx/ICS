
toBase :: Int -> Int -> [Int]
-- toBase (_:[]) = []
toBase x 0 = []
toBase x y = (toBase x (div y x) ++ [(mod y x)])

fromBase :: Int -> [Int] -> Int
fromBase _ [] = 0
fromBase x y =  ((head y) * x ^ ((length y) - 1)) + fromBase (x) (drop 1 y)


showBase :: Int -> Int -> String
showBase a b = foldl1 (++) [show x | x <- (toBase a b)]
-- Foldl1 takes the first two elements of a list, applies the given operation and then continues doing the same throughout the list.

readBase :: Int -> String -> Int
readBase x s = fromBase x (map (read . (:"")) s :: [Int])
-- (:"") is the formatting specifier when you want to read a string with no spaces.