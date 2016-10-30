repeatFunc f 1 = f
repeatFunc f n = h 
	where h x = f ((repeatFunc f (n-1)) x)


f = repeatFunc sin 3