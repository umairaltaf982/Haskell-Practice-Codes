quickSorting :: Ord a => [a] -> [a]
quickSorting [] = []
quickSorting (x:xs) = 
    let large = [a | a <- xs, a >= x]
        small = [a | a <- xs, a < x]
    in  quickSorting small ++ [x] ++ quickSorting large