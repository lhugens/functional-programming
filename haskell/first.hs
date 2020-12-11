module Main where
import System.Environment
import System.IO

fac :: Integer -> Integer
fac n = if n == 0 then 1 else n * fac (n-1)

prompt = do
    n <- getLine
    return n

main :: IO()
main = do
--    n <- prompt
    args <- getArgs
    putStrLn ("Hello, " ++ args !! 0)
