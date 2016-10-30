checkSame [] = False
checkSame (x:xs) = any (\y->y==x) xs || checkSame xs

isosc (x1,y1) (x2,y2) (x3,y3) = checkSame [sqrt(((x1 - x2)^2)+((y1-y2)^2)),sqrt(((x1 - x3)^2)+((y1-y3)^2)),sqrt(((x2 - x3)^2)+((y2-y3)^2))]