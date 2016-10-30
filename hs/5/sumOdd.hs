data Tree = Empty |Node Integer Tree Tree

foldTree f e (Node val l r) = let
  resl = foldTree f e l
  resr = foldTree f e r
 in f val resl resr

foldTree f e Empty = e
 
sumOdd  = foldTree (\v l r -> if (v `mod` 2 == 1) then v+l+r else l+r) 0 