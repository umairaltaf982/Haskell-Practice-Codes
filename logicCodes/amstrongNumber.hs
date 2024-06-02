-- Function to check if a number is an Armstrong number
isArmstrong :: Int -> Bool
isArmstrong n = n == sumOfPowers
  where
    digits = map (read . (:[])) (show n)  -- Convert number to list of its digits
    numDigits = length digits             -- Count the number of digits
    sumOfPowers = sum (map (^ numDigits) digits)  -- Sum of each digit raised to the power of numDigits
