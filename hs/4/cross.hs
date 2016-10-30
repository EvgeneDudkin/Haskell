help xs k n= map (\x->if ((x == k)|| (x == (n+1-k)))then 1 else 0) xs
helpFunk xs 1 n = [help xs 1 n]
helpFunk xs k n = (help xs k n):(helpFunk xs (k-1) n)
cross n =reverse( helpFunk [1..n] n n)