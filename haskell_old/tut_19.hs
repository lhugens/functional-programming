import Data.List
-- infinite lists

ones = 1 : ones

nat = asc 1
    where asc n = n : (asc $ n + 1)

evens = map (*2) nat

odds = filter (\x -> mod x 2 /= 0) nat

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

s = find (\x -> mod x 90 == 0) nat
