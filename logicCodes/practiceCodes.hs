mult :: Int -> Int -> Int
mult x y = x * y

applyfunc :: (a -> a) -> a -> a
applyfunc f x = f (f (f x))

applydiv :: (a -> a) -> a -> a
applydiv f x = f x

makeZip :: (a -> b -> c) -> [a] -> [b] -> [c]
makeZip _ [] _ = []
makeZip _ _ [] = []
makeZip f (x : xs) (y : ys) = f x y : makeZip f xs ys

-- quicksort :: (Ord a) => [a] -> [a]
-- quicksort [] = []
-- quicksort (x:xs) = let smallerOrEqual = filter (<= x) xs
-- larger = filter (> x) xs
-- in quicksort smallerOrEqual ++ [x] ++ quicksort larger

max' :: (Ord a) => [a] -> a
max' [] = error "No value is in the list"
max' [x] = x
max' (x : xs) = max x (max' xs)

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
  | n <= 0 = []
take' _ [] = []
take' n (x : xs) = x : take' (n - 1) xs

rep' :: Int -> a -> [a]
rep' i _
  | i <= 0 = []
rep' i x = x : rep' (i - 1) x

zip' :: [a] -> [b] -> [(a, b)]
zip' _ [] = []
zip' [] _ = []
zip' (x : xs) (y : ys) = (x, y) : zip' xs ys

length' xs = sum [1 | x <- xs]

uppercase xs = [x | x <- xs, x `elem` ['A' .. 'Z']]

badAdd :: (Num a) => [a] -> a
badAdd (x : y : z : _) = x + y + z

adds n = map f [1 .. n]
  where
    f x = x * 2 + 1

adds' n = map (\x -> x * 2 + 1) [1 .. n]

concat1 :: [[a]] -> [a]
concat1 xss = [x| xs<-xss, x<-xs]

factor n = [x| x <- [1..n], n `mod`x == 0]

prime1 :: Integral a => a -> Bool
prime1 n
  |factor n == [1,n] = True
  |otherwise = False

pair12 :: [a] -> [(a,a)]
pair12 xs = zip xs (tail xs)

sorting :: Ord a => [a] -> [a]
sorting xs = [x | x <- xs, y <- xs , x < y]

foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' f v [] = v
foldr' f v (x:xs)= f x (foldr' f v xs)

foldl' :: (b -> a -> b ) ->b->[a]  -> b
foldl' f v [] = v
foldl' f v (x:xs) = foldl' f (f v x)  xs

type Pair' a = (a,a)
mult12 :: Pair' Int -> Int
mult12 (x,y) = x*y

