-- Problem 2 (a):

-- infix expression:

5 * (5 + 2 * (4 + 3)) - (5 * (10 + 3))

-- postfix expression:

(-) ((*) 5 ((+) 5 ((*) 2 ((+) 4 3)))) ((*) 5 ((+) 3 10))

-- End (a)

-- Problem 2 (b):

-- postfix expression:

gcd (div 42 2) (mod 30 16)

-- infix expression:

(42 `div` 2) `gcd` ( 30 `mod` 16 )

-- End (b)