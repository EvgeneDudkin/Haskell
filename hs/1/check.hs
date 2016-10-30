m f [] = []
m f (x:xs) = f x : m f xs

checkPos [False] = False
checkPos [True] = True
checkPos (x:xs) = x || (checkPos xs)

check cond [] = False
check cond xs = checkPos (m cond xs)