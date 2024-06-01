data Tree a = Leaf a | Branch (Tree a) (Tree a)
    deriving Show

instance Functor Tree where
    fmap f (Leaf a) = Leaf (f a)
    fmap f (Branch left right) = Branch (fmap f left) (fmap f right)

instance Applicative Tree where
    pure a = Leaf a
    (Leaf f) <*> j = fmap f j
    (Branch left right) <*> j = Branch (left <*> j) (right <*> j)

main :: IO()
main = do
    print (Leaf (+3) <*> Branch (Leaf 3) (Leaf 6))
