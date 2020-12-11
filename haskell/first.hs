module Main where
import System.Environment

sumer :: [Float] -> Float
sumer [] = 0
sumer (x:xs) = x + sum xs

main :: IO ()
main = do
    line <- getLine
    numbers <- getLine :: IO [Integer]
    print $ numbers













































