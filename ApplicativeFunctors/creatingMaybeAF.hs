data Maybe2 a = Just2 a | Nothing2
    deriving Show

-- Creating a simple Functor
instance Functor Maybe2 where
    fmap f Nothing2  = Nothing2
    fmap f (Just2 a) = Just2 (f a)

-- Creating an Applicative Functor
instance Applicative Maybe2 where
    pure = Just2
    (Just2 f) <*> j = fmap f j
    Nothing2 <*> _ = Nothing2

main :: IO ()
main = do
    print (Just2 (+3) <*> Just2 3 :: Maybe2 Int)    -- Should print Just2 6
    print (Nothing2 <*> Just2 6 :: Maybe2 Int)      -- Should print Nothing2
    print (Just2 (+3) <*> Nothing2 :: Maybe2 Int)   -- Should print Nothing2
    print (Just2 (*2) <*> Just2 4 :: Maybe2 Int)    -- Should print Just2 8
