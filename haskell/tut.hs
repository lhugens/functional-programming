sumer :: [Float] -> Float
sumer [] = 0
sumer (x:xs) = x + sum xs

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
    
fac :: Integer -> Integer
fac 0 = 1
fac n = n * fac (n-1)

fac2 :: Integer -> Integer
fac2 n
    | n <= 1 = 1
    | otherwise = n * fac2 (n-1)


