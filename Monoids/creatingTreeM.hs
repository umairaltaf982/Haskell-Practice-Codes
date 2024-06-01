data Tree a = Leaf a | Branch (Tree a) (Tree a)
    deriving Show

g :: Int -> Tree Int
g x 
    | x == 4 = Leaf 99
    | otherwise = Branch (Leaf (x*2)) (Leaf (x*4))

instance Functor Tree where
    fmap f (Leaf a) = Leaf (f a)
    fmap f (Branch left right) = Branch (fmap f left) (fmap f right)

instance Applicative Tree where
    pure = Leaf
    (Leaf f) <*> j = fmap f j
    (Branch left right) <*> j = Branch (left <*> j) (right <*> j)

instance Monad Tree where
    (Leaf val) >>= f = f val
    (Branch left right) >>= f = Branch (left >>= f) (right >>= f)

main :: IO()
main = do
    print $ Leaf 4 >>= g
    print $ Branch (Leaf 4) (Leaf 5) >>= g