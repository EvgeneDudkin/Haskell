

findMajor1 [] _= Nothing
findMajor1 (x:xs) sumPred = if x > (sumPred + sum xs) then Just x else findMajor1 xs (sumPred+x)

findMajor xs = findMajor1 xs 0