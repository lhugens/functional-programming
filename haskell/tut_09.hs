foldrr :: (a -> b -> b) -> b -> [a] -> b
foldrr f c [] = c
foldrr f c (x:xs) = f x (foldrr f c xs)

count :: Eq a => a -> [a] -> Int
count z = foldr (\x acc -> if x==z then acc+1 else acc) 0
