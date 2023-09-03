import Test.QuickCheck
import Data.List hiding (insert)

-- 1

data Tree a = Leaf | Node (Tree a) a (Tree a)
    deriving (Show)

t = aux (0, 0)
    where aux (l, r) = Node (aux (l+1, r)) (l, r) (aux (l, r+1))

cut :: Int -> Tree a -> Tree a
cut _ Leaf = Leaf
cut 0 (Node tl x tr) = Leaf
cut n (Node tl x tr) = Node (cut (n-1) tl) x (cut (n-1) tr)

--2

insert :: (Ord a) => a -> Tree a -> Tree a
insert x Leaf = Node Leaf x Leaf
insert x (Node tl v tr)
  | x < v = Node (insert x tl) v tr
  | otherwise = Node tl v (insert x tr)

inorder :: Tree a -> [a]
inorder Leaf = []
inorder (Node tl x tr) = (inorder tl) ++ [x] ++ (inorder tr)

prop xs = sort xs === (inorder $ foldr insert Leaf xs)
    where types = xs :: [Int]
