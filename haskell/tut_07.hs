-- partial functions

add :: Int -> Int -> Int
add = (\y -> (\x -> x + y))

{-
*Main> add 2 3
5
-}

--doubleList :: [Float] -> [Float]
doubleList = map (\x -> 2*x)
--
--vezes :: forall a. a -> a -> a
--vezes x y = x*y
--

