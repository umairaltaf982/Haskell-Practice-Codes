data Maybe2 a = Just2 a | Nothing2
    deriving Show

instance Functor Maybe2 where
    fmap f Nothing2 = Nothing2
    fmap f (Just2 a) = Just2 (f a)

-- We can also run the main on the ghci or another compiler but I'm making here
main :: IO ()
main = do
    print $ fmap (+1) (Just2 3)
    print $ fmap (+1) Nothing2
