myFunk xs = foldr (\(x,y) res-> let a = myMax(x,y) in (if a < 100 then res&&True else res&&False)) True xs

myMax (x,y) = if x > y then x else y
myMap xs = map (\(x,y)-> let a = myMax(x,y) in (if a < 100 then True else False)) xs