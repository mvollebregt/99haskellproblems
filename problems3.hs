-- Problem 31 - not very efficient

isPrime :: Int -> Bool
isPrime n = isPrime' n (n - 1)
    where
        isPrime' n 1 = True
        isPrime' n m = ((n `mod` m) /= 0) && (isPrime' n (m - 1))

