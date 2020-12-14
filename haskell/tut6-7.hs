-- tutorial 7

-- anonymous functions
add1 = (\x -> x+1)
add3 = (\x y z -> x+y+z)

app :: (a -> b) -> a -> b
app f x = f x

-- app (\x -> x+1) 1

mapa :: (a -> b) -> [a] -> [b]
mapa _ [] = []
mapa f (x:xs) = f(x) : mapa f xs 

-- mapa (\x -> x+2) [1,2,3]
-- map (\x -> x+2) [1,2,3]

filtro :: (a -> Bool) -> [a] -> [a]
filtro _ [] = []
filtro f (x:xs)
  | f(x) = x : filtro f xs
  | otherwise = filtro f xs

-- filtro (\x -> mod x 2 == 0) [1,2,3,4,5,6]

-- tutorial 7

-- in haskell these are the same thing:

-- f :: a -> b -> c -> d
-- f :: a -> (b -> (c -> d))

-- (there are no multiple argument functions in haskell)

addd :: Int -> Int -> Int
addd = (\x -> (\y -> x+y))

doubleList = map (\x -> 2*x)

-- tutorial 8

map2D = map . map

-- map2D (\x -> 2*x) [[1,2],[3,4]]


