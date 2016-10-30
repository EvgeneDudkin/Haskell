f i = if i > 0 then Just (-i) else Nothing
g i = if mod i 2 == 0 then Just (div i 2) else Nothing

f <=< g = \x -> let a = g x in
	case a of
	 Nothing -> Nothing
	 Just y  -> f y
	 