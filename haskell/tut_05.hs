import Data.List

elemm :: (Eq a) => a -> [a] -> Bool
elemm x0 [] = False 
elemm x0 (x:xs)
  | x0 == x = True
  | otherwise = False || elemm x0 xs

elemm1 :: (Eq a) => a -> [a] -> Bool
elemm1 _ [] = False
elemm1 x0 (x:xs) = (x0 == x) || (elemm1 x0 xs)

{-
*Main> elemm 1 [1,2,3]
True
*Main> elemm 4 [1,2,3]
False
-}
