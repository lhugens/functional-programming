-- higher order functions
app :: (a -> b) -> a -> b
app f x = f x

add1 :: Int -> Int
add1 x = x + 1

{-
*Main> app add1 2
3
-}

-- anonymous functions
{-
*Main> app (\x -> x+1) 2
3
-}

mapp :: (a -> b) -> [a] -> [b]
mapp _ [] = []
mapp f (x:xs) = f x : mapp f xs 

{-
*Main> mapp (\x -> x+1) [1,2]
[2,3]
-}

filterr :: (a -> Bool) -> [a] -> [a]
filterr _ [] = []
filterr f (x:xs)
  | f x = x : filterr f xs
  | otherwise = filterr f xs

{-
*Main> filterr (\x -> mod x 2 == 0) [1,3,4,8]
[4,8]
-}
