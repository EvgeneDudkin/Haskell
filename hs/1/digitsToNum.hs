digitsToNum xs = fst (foldr (\x (res,temp)-> if temp < 2 then (res*x,temp*10) else (res +(temp*x),temp*10)) (1,1) xs )