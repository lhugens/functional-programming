import Data.List

-- returns True if x0 is a list
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

-- removes all duplicates from a list
unique :: (Eq a) => [a] -> [a]
unique [] = []
unique (x:xs)
  | elemm x xs = unique xs
  | otherwise = x : unique xs

{-
*Main> unique [1,1,2]
[1,2]
*Main> unique [1,2,3]
[1,2,3]
*Main> unique [1,3,3]
[1,3]
*Main> unique [1,1,1]
[1]
-}

-- returns True if a list is in ascending order
isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [x1,x2] = x1 <= x2
isAsc (x1:x2:xs)
  | x1 <= x2 = True && isAsc (x2:xs)
  | otherwise = False

isAsc1 :: [Int] -> Bool
isAsc1 [] = True
isAsc1 [x] = True
isAsc1 (x1:x2:xs) = (x1 <= x2) && isAsc1 (x2:xs)

{-
*Main> isAsc1 [1,2,3]
True
*Main> isAsc1 [1,4,3]
False
-}

-- determines if a path from one node to another
-- exists within a directed graph
hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] a b = (a == b)
hasPath xs a b
  | a == b = True
  | otherwise = or [ hasPath xs' m b | (n,m) <- xs, n == a]
      where xs' = [(n,m) | (n,m) <- xs, n /= a]

{-
*Main> hasPath [(1,2),(2,3),(3,2),(4,3),(4,5)] 1 2
True
*Main> hasPath [(1,2),(2,3),(3,2),(4,3),(4,5)] 5 4
False
-}
