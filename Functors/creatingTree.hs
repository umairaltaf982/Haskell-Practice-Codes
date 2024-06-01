data Tree a = Leaf a | Branch (Tree a) (Tree a)
    deriving Show

instance Functor Tree where
    fmap f (Leaf a) = Leaf (f a)
    fmap f (Branch left right) = Branch (fmap f left) (fmap f right)

main :: IO()
main = do
    let x = Branch (Leaf 4) (Branch (Leaf 3) (Leaf 8))
    print $ fmap (+3) x