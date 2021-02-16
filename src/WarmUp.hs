import Test.QuickCheck

-- | Append two lists.
myAppend :: [a] -> [a] -> [a]
myAppend [] [] = []
myAppend [] x = x
myAppend x [] = x
myAppend (x:xs) y = (x:myAppend xs y)  

  
-- | Extract the last element of a list, which must be finite and
-- non-empty. The function generates an error if the list is empty.
myLast :: [a] -> a
myLast [] = error "Empty list"
myLast [x] = x
myLast (x:xs) = myLast xs


-- | Test whether a list is empty.
myNull :: [a] -> Bool
myNull [] = True
myNull [x] = False
myNull (x:xs) = False


-- | Testing 'myAppend' function.
propMyAppend :: [Int] -> [Int] -> Bool
propMyAppend x y = x++y == myAppend x y

-- | Testing 'myLast' function.
propMyLast :: [Int] -> Property
propMyLast xs = (not (myNull xs)) ==> myLast xs == last xs


-- | Testing 'myNull' function.
propMyNull:: [Int] -> Bool
propMyNull x
    | myNull x  = length(x) == 0
    | otherwise = length(x) > 0



main :: IO ()
main = do
    quickCheck propMyAppend
    quickCheck propMyNull
    quickCheck propMyLast
 

