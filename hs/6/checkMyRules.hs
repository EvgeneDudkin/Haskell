lst = 300:300:300:300:300:300:1000:1000:lst
checkMas [False] = False
checkMas [True] = True
checkMas (x:xs) = x && (checkMas xs)
checkMyRules xs = checkMas(zipWith (<=) xs lst)