module Main where
import BoolExpr (Variable, BoolExpr(..), evaluate)
import Data.List

--I have set the variable names to be the same as what the professor gave us. I had complications with it.
variables :: BoolExpr -> [Variable]
variables F = []
variables T = []
variables (Var v) = [v]
variables (Or e1 e2) = sort (union (variables e1) (variables e2))
variables (And e1 e2) = sort (union (variables e1) (variables e2))
variables _ = []

subsets :: [Variable] -> [[Variable]]
subsets [] = [[]]
subsets (a:ass) = [no | yass <- subsets ass, no <- [yass, (a:yass)]]

--Please don't mind my variable names, 7.2 C killd me, had to let off some steam

truthtable ::BoolExpr -> [([Variable], Bool)]
truthtable beemovie = zip (subsets (variables beemovie)) (map (\jazz -> evaluate beemovie jazz) (subsets (variables beemovie)))

main = print (truthtable (And (Var 'a') (Or (Var 'c') (Var 'b'))))