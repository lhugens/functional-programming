-- understanding foldr

add :: [Int] -> Int
add xs = foldr (+) 0 xs

multiply :: [Int] -> Int
multiply xs = foldr (*) 1 xs

andd :: [Bool] -> Bool
andd xs = foldr (&&) True xs

orr :: [Bool] -> Bool
orr xs = foldr (||) False xs

-- newton-raphson method

next :: Float -> Float -> Float
next n x = (x + n/x)/2

repeatt :: (a -> a) -> a -> [a] 
repeatt f x = f(x) : repeatt f (f(x)) 

within :: Float -> [Float] -> Float
within eps (a:b:xs)
  | (a-b) < eps = b
  | otherwise = within eps (b:xs)

sqrtt :: Float -> Float -> Float -> Float
sqrtt a0 n eps = within eps ( repeatt (next n) a0 )
