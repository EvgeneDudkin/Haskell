half (x:xs) = ("["++x++"]") : half xs

brackets = "[]": half brackets
