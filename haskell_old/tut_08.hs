import Data.List

dot :: (b -> c) -> (a -> b) -> a -> c
dot f g x = f (g x)

{-
*Main> dot (\x -> x+1) (\x -> x*2) 3
7
-}

descSort x = reverse (sort x)

{-
*Main> descSort [1,4,2,5]
[5,4,2,1]
-}

descSort1 :: Ord a => [a] -> [a]
descSort1 = reverse . sort

{-
*Main> descSort1 [1,4,2,5]
[5,4,2,1]
-}

map2D :: (a -> b) -> [[a]] -> [[b]]
map2D = map . map

{-
*Main> map2D (\x -> 2*x) [[2,3],[4,3]]
[[4,6],[8,6]]
-}

-- try to make alternative equivalent definitions of map2D

-- map2D = (\f2 xs -> map f2 xs) . (\f1 xs -> map f1 xs)
-- map2D = (\x -> (\f2 xs -> map f2 xs) (\f1 xs -> map f1 xs) x)
-- map2D f = (\f2 xs -> map f2 xs) (\f1 xs -> map f1 xs) f
-- map2D f = (\f2 xs -> map f2 xs) (\xs -> map f xs)
-- map2D f = (\xs -> map (\ys -> map f ys) xs)
-- map2D f xs = map (\ys -> map f ys) xs

mapp :: (a -> b) -> [a] -> [b]
mapp _ [] = []
mapp f (x:xs) = f x : mapp f xs

map2 :: (a -> b) -> [[a]] -> [[b]]
map2 = mapp . mapp

map3 = (\f xs -> map (map f) xs)

t1 = (\f x -> f x) (\y -> 3*y)
t2 = (\x -> 2*x) . (\y -> 3*y)
-- $ operator - for cleaner syntax
--f xs = map (\x -> x+1) (filter (\x -> x>1) xs) 
f xs = map (\x -> x+1) $ filter (\x -> x>1) xs

{-
*Main> f [1,2,3]
[3,4]
-}

