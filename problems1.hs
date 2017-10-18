-- Problem 1

myLast :: [a] -> a
myLast [] = error "Empty list"
myLast [x] = x
myLast (_:xs) = myLast xs

-- Problem 2

myButLast :: [a] -> a
myButLast [x, _] = x
myButLast (_ : xs) = myButLast xs

-- Problem 3

elementAt :: [a] -> Int -> a
elementAt list n = list !! (n - 1)

elementAt' :: [a] -> Int -> a
elementAt' (x:_) 1 = x
elementAt' (x:xs) (n) = elementAt' (xs) (n-1)

-- Problem 5

myReverse :: [a] -> [a]
myReverse list = myReverse' list []
    where
        myReverse' [] reversed = reversed
        myReverse' (x:xs) reversed = myReverse' xs (x: reversed)


-- Problem 6

isPalindrome list = list == myReverse list

