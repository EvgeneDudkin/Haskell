add k = k*10 + 1
helpFunk k = (5*k):(helpFunk (add k))
fives  = helpFunk 1