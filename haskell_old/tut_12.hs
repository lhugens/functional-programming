data Person = Person {name :: String, age :: Int}

-- these are automatically generated:
-- name :: Person -> String
-- age :: Person -> Int

greet :: Person -> [Char]
greet person = "Hi " ++ name person

-- > greet (Person "Leo" 12)
-- "Hi Leo"

data Point = 
    D2 {x :: Int, y :: Int }
    | D3 {x :: Int, y :: Int, z :: Int}

