import Data.List

elemm :: (Eq a) => a -> [a] -> Bool
elemm _ [] = False
elemm y (x:xs) 
  | x == y = True
  | otherwise = elemm y xs

nubb :: (Eq a) => [a] -> [a]
nubb [] = []
nubb (x:xs)
  | elemm x xs = nubb xs
  | otherwise = x : nubb xs

isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [x] = True
isAsc (x:y:xs) = (x <= y) && isAsc (y:xs)
