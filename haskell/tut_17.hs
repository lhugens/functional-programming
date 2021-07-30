maybeadd :: Num b => Maybe b -> b -> Maybe b
maybeadd mx y = mx >>= (\x -> Just (x+y))

maybeadd2 :: Num b => Maybe b -> Maybe b -> Maybe b
maybeadd2 mx my = mx >>= (\x -> (my >>= (\y -> Just (x+y))))

maybeadd3 :: Num b => Maybe b -> Maybe b -> Maybe b
maybeadd3 mx my = mx >>= (\x -> (my >>= (\y -> return (x+y))))

monadd :: (Monad m, Num b) => m b -> m b -> m b
monadd mx my = do
    x <- mx
    y <- my
    return $ x + y

{-
instance Monad Maybe where
    m >>= f = case m of
                Nothing -> Nothing
                Just x -> f x
    return v = Just v
-}
