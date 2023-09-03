summ :: [Float] -> Float
summ [] = 0
summ (x:xs) = x + summ xs

{-
*Main> summ ([1,2,3])
6.0
*Main> summ ([])
0.0
*Main>
-}
