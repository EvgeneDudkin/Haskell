countFixPoints f a b =sum ( map (\y -> if y == 0 then 1 else 0)(zipWith (-) (map f [a..b]) [a..b]))