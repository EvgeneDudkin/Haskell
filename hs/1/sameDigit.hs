m f [] = []
m f (x:xs) = f x : m f xs

lastDig x = if x < 10 then x else lastDig (x `mod` 10)

checkSame [] = False
checkSame (x:xs) = any (\y->y==x) xs || checkSame xs

sameDigits xs = checkSame (m (\x->(lastDig x)) xs)