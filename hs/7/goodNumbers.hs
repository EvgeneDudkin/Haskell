lastC x = x `mod` 10

help (x:xs) = if (lastC x == 4) then ((x*10+5): help (xs)) else ((x*10+4):(x*10+5): help (xs))

goodNumbers = 4:5:(help goodNumbers)