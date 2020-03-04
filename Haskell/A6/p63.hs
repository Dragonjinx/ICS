import System.IO
import Data.Char
--import Emoji Got an error with this while compiling

--The convert function was given by the professor
convert :: String -> String
convert s
    | null $ filter (\c -> isLetter c && isAscii c) s = dec s
    | otherwise = enc s

animal :: Char -> Char
animal c = chr((ord c) + 127970)
--Converting the starting point hexadecimal value to decimal

smiley :: Char -> Char
smiley c = chr((ord c) + 128415)

animalPrime :: Char -> Char
animalPrime c = chr((ord c) - 127970)

smileyPrime :: Char -> Char
smileyPrime c = chr((ord c) - 128415)

--Following the professor's template.
enc :: String -> String
enc a = map (\c -> if isUpper c then animal c else smiley c) a

dec :: String -> String
dec a = map (\c -> if isUpper(animalPrime c) then animalPrime c else smileyPrime c) a

-- The part below was given by the professor but I kept getting errors so I excluded it.
-- main = do
    -- contents <- getContents
    -- putStrt $ convert contents
