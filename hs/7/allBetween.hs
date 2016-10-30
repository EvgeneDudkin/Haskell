checkPos [False] = False
checkPos [True] = True
checkPos (x:xs) = x && (checkPos xs)

allBetween xs ys zs =checkPos (map (\x-> (any (<x) ys) && (any (>x) zs))  xs)