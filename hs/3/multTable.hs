helpFunk xs 1 = [xs]
helpFunk xs n = (map (\x->x*n) xs):(helpFunk xs (n-1))
multTable n = reverse (helpFunk [1..n] n)