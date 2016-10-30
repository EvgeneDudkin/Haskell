sin39 x = (sin x, 2)
cos39 x = (cos x, 3)


f <=< g = \x-> let a = g x in
	let b = f (fst a) in
	(fst b, snd b + snd a)
	
id39 x = (id x, 0)
calculate fs= foldr (<=<) (id39) fs 
