sumCh xs = del (sumHelp xs 0 1)

sumHelp [] s p = (s,p)
sumHelp (x:xs) s p =  if (x `mod` 2 == 0) then (sumHelp xs (s+x) (p*x)) else (sumHelp xs s (p*x))

del (x,y) = x/y