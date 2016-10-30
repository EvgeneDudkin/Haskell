data Tree = Empty |Node Integer Tree Tree

height Empty = -1
height (Node val l r) = (max (height l) (height r)) + 1 