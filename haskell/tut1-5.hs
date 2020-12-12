import Data.List
-- tutorial 1

sumer :: [Float] -> Float
sumer [] = 0
sumer (x:xs) = x + sum xs

-- tutorial 2

in_range :: Float -> Float -> Float -> Bool
in_range min max x = min <= x && x <= max

in_range2 :: Integer -> Integer -> Integer -> Bool
in_range2 min max x =
    let lower = min <= x
        higher = x <= max
    in lower && higher

in_range3 :: Integer -> Integer -> Integer -> Bool
in_range3 min max x = lower && higher
    where lower = min <= x
          higher = x <= max

-- tutorial 3

fac :: Integer -> Integer
fac 0 = 1
fac n = n * fac (n-1)

fac2 :: Integer -> Integer
fac2 n
    | n <= 1 = 1
    | otherwise = n * fac2 (n-1)

fac3 :: Integer -> Integer
fac3 n = aux n 1
    where 
        aux n acc
            | n <= 1 = acc
            | otherwise = aux (n-1) n*acc

-- tutorial 4

asc :: Int -> Int -> [Int]
asc n m 
  | n > m = []
  | n == m = [m]
  | n < m = n : asc (n+1) m

-- import Data.List
-- head [1,2,3,4] => 1
-- tail [1,2,3,4] => [2,3,4]
-- init [1,2,3,4] => [1,2,3]
-- length [1,2,3,4] => 4
-- null [] => True
-- null [9] => False
-- and [True, False] -> False
-- or [True, False] -> True
-- [ 2*x | x <- [1, 2, 3], x > 1] => [4,6]

evens :: [Int] -> [Int]
evens [] = []
evens (x:xs)
  | mod x 2 == 0 = x : evens xs
  | otherwise = evens xs

addTuples :: [(Int, Int)] -> [Int]
addTuples xs = [ x+y | (x,y) <- xs]

-- tutorial 5

elems :: (Eq a) => a -> [a] -> Bool
elems _ [] = False
elems a (x:xs)
  | x == a = True
  | otherwise = elems a xs

elems2 :: (Eq a) => a -> [a] -> Bool
elems2 _ [] = False
elems2 a (x:xs) = (x == a) || elems2 a xs

nub2 :: (Eq a) => [a] -> [a]
nub2 [] = []
nub2 (x:xs)
  | elems x xs = nub2 xs
  | otherwise  = x : nub2 xs

isAsc :: [Int] -> Bool
isAsc [] = True
isAsc (x:xs)
  | length xs == 0 = True
  | x < (head xs) = isAsc xs
  | otherwise = False

isAsc2 :: [Int] -> Bool
isAsc2 [] = True
isAsc2 [x] = True
isAsc2 (x:y:xs) = 
    (x <= y) && isAsc2 (y:xs)

hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] a b = (a == b)
hasPath xs x y
  | x == y = True
  | otherwise =
      let xs' = [(n,m) | (n,m) <- xs, n /= x]
       in or [ hasPath xs' m y | (n,m) <- xs, n == x]
       
-- hasPath [(1,2),(3,2),(4,3),(5,1)] 5 2
