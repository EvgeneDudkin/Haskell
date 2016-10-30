minlist [x] = x 
minlist (x:xs) = if x > minlist xs then minlist xs else x