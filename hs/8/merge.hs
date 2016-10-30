merge xs []= xs
merge [] ys = ys
merge (x:xs) (y:ys) = if (x<y) then (x:merge xs (y:ys)) else ( if (x == y) then (x:merge xs ys) else (merge (y:ys) (x:xs)) )

lst = 1:(merge (map (\x->x*2) lst) (map (\y->y*3) lst))