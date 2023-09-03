import Test.QuickCheck

foldrr :: (a -> b -> b) -> b -> [a] -> b
foldrr f c [] = c
foldrr f c (x:xs) = f x (foldrr f c xs)

prop f c xs = foldr f c xs === foldrr f c xs

propp xs = collect (length xs) $ prop (+) 0 xs

{-
   quickCheck propp
   quickCheck (withMaxSuccess 10000 propp)
-}

proppp k v m = lookup k ((k,v):m) === Just v
    where types = (k :: Int, v :: Int)
