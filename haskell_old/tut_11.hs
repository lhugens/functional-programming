rev :: [a] -> [a]
rev = foldl (\acc x -> x:acc) []

summ :: [(Float, Float)] -> Float
summ [] = 0
summ xs = sum $ map (\(x, y) -> x+y) xs

--mine

frac :: Float -> Float -> Float -> Float -> Float
frac x x_j x_0 x_1 = ((x - x_0) / (x_j - x_0)) * ((x - x_1) / (x_j - x_1))

fltr :: [(Float, Float)] -> Float -> [Float]
fltr xs x_j = filter (\x -> x /= x_j) $ map (\(x, y) -> x) xs

l_j :: Float -> Float -> [(Float, Float)] -> Float
l_j x xj xs = foldr (frac x xj) 1 (fltr xs xj)

lagrange :: [(Float, Float)] -> Float -> Float
lagrange xs x = sum $ map (\(z, y) -> y * (l_j x z xs)) xs

-- solution

lgr :: [(Float, Float)] -> Float -> Float
lgr xs x = foldl (\acc (xj, yj) -> acc + yj * (l xj)) 0 xs
    where l xj = foldl (\acc (xk, _) -> if xj==xk then acc else acc * ((x-xk)/(xj-xk))) 1 xs

-- mine

data Trie a = Leaf a | Node a [Trie a]

foldtrie :: (b -> a -> b) -> b -> Trie a -> b
foldtrie f c xs = foldl f c $ preorder xs
    where
        preorder (Leaf x) = [x]
        preorder (Node x xs) = x : (foldr (++) [] (map preorder xs))

-- solution

fldtr :: (b -> a -> b) -> b -> Trie a -> b
fldtr f acc (Leaf x) = f acc x
fldtr f acc (Node x xs) = foldl f' (f acc x) xs
    where
        f' acc t = foldtrie f acc t


