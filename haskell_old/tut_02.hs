in_range :: Ord a => a -> a -> a -> Bool
in_range min max x =
  x >= min && x <= max

in_range2 :: Ord a => a -> a -> a -> Bool
in_range2 min max x =
  let ilb = min <= x
      iub = max >= x
  in
  ilb && iub

in_range3 :: Ord a => a -> a -> a -> Bool
in_range3 min max x = ilb && iub
  where
    ilb = min <= x
    iub = max >= x

{-
*Main> in_range 0 5 4
True
*Main> in_range 0 5 5
True
*Main> in_range 0 5 6
False
*Main>
-}
