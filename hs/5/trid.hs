{-# LANGUAGE FlexibleContexts #-}

sin39 x = (sin x, 2)
exp39 x = (exp x, 5)
f x = (x*x+5, 10)

calculate xs x  = foldr (\f res-> let p = f (fst res) in (fst p,(snd p) + (snd res))) (x,0) xs