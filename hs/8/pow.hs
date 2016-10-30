pow1 1 = return 1
pow1 n = (pow1 (n-1))++([1..n] >>= \x-> return (x^x))

pow2 1 = return 1
pow2 n = (pow2 (n-1))++(do x <- [1..n] 
	                   return (x^x))