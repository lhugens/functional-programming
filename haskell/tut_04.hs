import Data.List

{-
   list can only be of 1 type
   how to build lists:
   []
   (x:xs)
-}

asc :: Int -> Int -> [Int]
asc n m  
  | m < n = []
  | m == n = [m]
  | otherwise = n : asc (n+1) m

{-
*Main> asc 1 3
[1,2,3]
*Main> asc 1 1
[1]
*Main> asc 1 0
[]
-}

headd :: [a] -> a
headd (x:xs) = x

taill :: [a] -> [a]
taill (x:xs) = xs

initt :: [a] -> [a]
initt [x1,x2] = [x1]
initt (x:xs) = x : initt xs

lastt :: [a] -> a
lastt [x] = x
lastt (x:xs) = lastt xs

lengthh :: [a] -> Int
lengthh [] = 0
lengthh [x] = 1
lengthh (x:xs) = 1 + lengthh xs

nulll :: [a] -> Bool
nulll [] = True
nulll _ = False

-- lists of Booleans

andd :: [Bool] -> Bool
andd [] = True
andd (x:xs) = x && andd xs 

orr :: [Bool] -> Bool
orr [] = True
orr (x:xs) = x || orr xs

--tuples

fstt :: (a,b) -> a
fstt (x,_) = x

-- list commprehension
addTuples :: [(Int, Int)] -> [Int]
addTuples xs = [ x + y | (x,y) <- xs]

{-
*Main> addTuples [(1,3),(2,4),(3,4)]
[4,6,7]
-}

evenss :: [Int] -> [Int]
evenss [] = []
evenss (x:xs)
  | mod x 2 == 0 = x : evenss xs
  | otherwise = evenss xs
