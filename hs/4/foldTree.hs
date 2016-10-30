data Tree = Empty |Node Integer Tree Tree

height Empty = -1
height (Node val l r) = (max (height l) (height r)) + 1 

foldTree f e (Node val l r) = (val `f` (foldTree f e l)) `f` (foldTree f e r)
foldTree f e Empty = e 

test = foldTree (+) 0 (Node 1 (Node 3 Empty (Node 5 Empty Empty)) (Node 2 (Node 9 Empty Empty) Empty)) 
test1 = foldTree (*) 1 (Node 1 (Node 3 Empty (Node 5 Empty Empty)) (Node 2 (Node 9 Empty Empty) Empty)) 