-- Problem 1

myLast [x] = x
myLast (_:xs) = myLast xs
