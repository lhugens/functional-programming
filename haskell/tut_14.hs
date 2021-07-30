import Data.Maybe

safediv :: Int -> Int -> Maybe Int
safediv a b = if b == 0 then Nothing else Just $ div a b

{-
*Main> safediv 10 5
Just 2
*Main> isJust $ safediv 10 5
True
*Main> isNothing $ safediv 10 5
False
*Main> isNothing $ safediv 10 0
True
*Main> fromJust $ safediv 10 0
*** Exception: Maybe.fromJust: Nothing
CallStack (from HasCallStack):
  error, called at libraries/base/Data/Maybe.hs:148:21 in base:Data.Maybe
  fromJust, called at <interactive>:79:1 in interactive:Ghci5
*Main> fromJust $ safediv 10 5
2
-}
