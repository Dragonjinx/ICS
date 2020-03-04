import System.IO
import Data.Char

toAnimal :: Char -> Char
toAnimal c = chr . (+127970) $ ord c

toSmileyEmoji :: Char-> Char
toSmileyEmoji c = chr . (+128415) $ ord c

encode :: String -> String
encode xs = map (\c -> if isUpper c then toAnimal c else toSmileyEmoji c) xs

fromAnimal :: Char -> Char
fromAnimal c = chr $ (ord c) - 127970

fromSmileyEmoji :: Char-> Char
fromSmileyEmoji c = chr $ (ord c) - 128415

isAnimal :: Char -> Bool
isAnimal c = if ((ord c >= ord '🐣') && (ord c <= ord '🐼')) then True else False

decode :: String -> String
decode xs = map (\c -> if isAnimal c then fromAnimal c else fromSmileyEmoji c) xs

main = do
    contents1 <- getLine
    contents2 <- getLine
    putStr $ (encode contents1) ++ "\n" ++ (decode contents2)