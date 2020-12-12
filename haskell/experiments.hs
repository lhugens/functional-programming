-- understanding foldr

add :: [Int] -> Int
add xs = foldr (+) 0 xs

multiply :: [Int] -> Int
multiply xs = foldr (*) 1 xs

andd :: [Bool] -> Bool
andd xs = foldr (&&) True xs

orr :: [Bool] -> Bool
orr xs = foldr (||) False xs
