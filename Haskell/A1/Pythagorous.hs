square :: Double -> Double
square  x = x * x

distance :: (Double, Double) -> (Double, Double) -> Double
distance (x1, y1) (x2, y2) = sqrt (square(x2 - x1) + square(y2-y1))

-- alternative way:

distance :: (Double, Double) -> (Double, Double) -> Double
distance (x1, y1) (x2, y2) = sqrt (square(x2 - x1) + square(y2-y1))
    where
            square :: Double -> Double
            square x = x * x