addNumbers :: Int -> Int -> Int
addNumbers x y = x + y

main :: IO ()
main = do
    putStrLn "Enter the first number"
    input1 <- getLine
    let num1 = read input1 :: Int

    putStrLn "Enter the second number"
    input2 <- getLine
    let num2 = read input2 :: Int

    let sum = addNumbers num1 num2
    putStrLn $ "The sum of " ++ show num1 ++ " and " ++ show num2 ++ " is " ++ show sum

