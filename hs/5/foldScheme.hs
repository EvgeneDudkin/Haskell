data Scheme a = P (Scheme a) (Scheme a) | S (Scheme a) (Scheme a) | R a 

foldScheme (f, g, h) (P l r) = g (foldScheme (f, g, h) l) (foldScheme (f, g, h) r) 
foldScheme (f, g, h) (S l r) = h (foldScheme (f, g, h) l) (foldScheme (f, g, h) r) 
foldScheme (f, g, h) (R a) = f a 

schem = S (P (R 2) (R 2)) (R 2) 
test1 = foldScheme(id, \l r -> 1 / (1 / l + 1 / r), \l r -> l + r) schem 
test2 = foldScheme(id, \l r -> max l r, \l r -> max l r) schem 
test3 = foldScheme(const 1, \l r -> l + r, \l r -> l + r) schem
