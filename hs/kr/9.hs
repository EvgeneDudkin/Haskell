data Tree = Empty |Node Integer Tree Tree



foldTree f e (Node val l r) = let
	resl = foldTree f e l
	resr = foldTree f e r
        in f val resl resr 
        
foldTree f e Empty = e

myFunk = foldTree (\v l r -> if (v == 100 && l == "Empty" && r =="Empty") then True else False) False