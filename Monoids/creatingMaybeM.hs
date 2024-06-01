data Maybe2 a = Just2 a | Nothing2
    deriving Show

half :: Int -> Maybe2 Int
half x = if even x then Just2 (x `div` 2) else Nothing2

instance Functor Maybe2 where
    fmap _ Nothing2  = Nothing2
    fmap f (Just2 a) = Just2 (f a)

instance Applicative Maybe2 where
    pure = Just2
    (Just2 f) <*> j = fmap f j
    Nothing2 <*> f = Nothing2

-- Creating an instance of Monad
instance Monad Maybe2 where
    (Just2 a) >>= f = f a
    Nothing2 >>= f = Nothing2

main :: IO ()
main = do
    print $ Just2 17 >>= half -- Should print Nothing2
    print $ Just2 20 >>= half -- Should print Just2 10
