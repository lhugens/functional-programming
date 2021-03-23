import GHC.Num

fac :: Natural -> Natural
fac 0 = 1
fac n = n * fac (n-1)

-- guards
fac1 :: Natural -> Natural
fac1 n
  | n == 0 = 1
  | otherwise = n * fac1 (n-1)

-- accumulators
fac2 :: Natural -> Natural
fac2 n = aux n 1
    where 
        aux n acc
          | n <= 1 = acc
          | otherwise = aux (n-1) (n*acc)

{-
*Main> fac 3
6
*Main> fac 500000000000000
*** Exception: stack overflow
*Main> fac2 500000000000000
^CInterrupted.
-}

-- patters
is_zero :: Int -> Bool
is_zero 0 = True
is_zero _ = False

{-
*Main> is_zero 0
True
*Main> is_zero 1
False
-}
