-- Function to find the proper divisors of a number
properDivisors :: Int -> [Int]
properDivisors n = [x | x <- [1..n-1], n `mod` x == 0]

-- Function to check if a number is a perfect number
isPerfect :: Int -> Bool
isPerfect n = n == sum (properDivisors n)