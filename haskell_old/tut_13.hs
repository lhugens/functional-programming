data Person = Person {name :: String, age :: Int}

instance Eq Person where
    (==) (Person s a) (Person t b) = (s==t) && (a==b)

instance Ord Person where
    (<) (Person s a) (Person t b) = a < b
    (<=) (Person s a) (Person t b) = a <= b
