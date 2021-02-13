-- | Append two lists.
myAppend :: [a] -> [a] -> [a]
myAppend [] [] = []
myAppend [] x = x
myAppend x [] = x
myAppend (x:xs) y = (x:myAppend xs y)  

main = print(myAppend [1,2] [3,7,8,5])
  

myLast :: [a] -> a
myLast [] = error "Empty list"
myLast [x] = x
myLast (x:xs) = myLast xs

main = myLast []


-- | Test whether a list is empty.
myNull :: [a] -> Bool
myNull [] = True
myNull [x] = False
myNull (x:xs) = False

main = print(myNull [78, 5, 6, 7])



