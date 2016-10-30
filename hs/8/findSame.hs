findHelp xs = if (length xs == 0) then ("Nety takogo, zahodi popozhe",0) else ("Takoe imeetsya: ",head xs)

findHelper x [] = []
findHelper x (x1:xs)= if (x == x1) then [x] else (findHelper x (xs))

findSame' [] = []
findSame' (x:xs) =((findHelper x xs)++(findSame' xs))

findSame xs = findHelp (findSame' xs)