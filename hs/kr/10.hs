sinWithPrice x = (sin x, 0.01*x)
mass n = zipWith () [1..n] sinWithPrice
calculate n x  = foldr (\f res-> let p = f (fst res) in (fst p,(snd p) + (snd res))) (x,0) xs