module BoolExpr (Variable, BoolExpr(..), evaluate) where
    
type Variable = Char
    
data BoolExpr
    = T
    | F
    | Var Variable
    | Not BoolExpr
    | And BoolExpr BoolExpr
    | Or  BoolExpr BoolExpr
    deriving (Show)


-- evaluates an expression
evaluate :: BoolExpr -> [Variable] -> Bool
evaluate T _            = True
evaluate F _            = False
evaluate (Var v) vs     = v `elem` vs
evaluate (Not e) vs     = not (evaluate e vs)
evaluate (And e1 e2) vs = evaluate e1 vs && evaluate e2 vs
evaluate (Or  e1 e2) vs = evaluate e1 vs || evaluate e2 vs