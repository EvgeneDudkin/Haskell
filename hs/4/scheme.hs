data Scheme = Sopr Double | TwoScheme Integer Scheme Scheme

resis (Sopr val) = val
resis (TwoScheme 0 a b) = resis a + resis b
resis (TwoScheme 1 a b) = 1/(1/(resis a) + (1/(resis b)))

totalResistance sch = resis sch
test = totalResistance (TwoScheme 0 (TwoScheme 1 (Sopr 2) (Sopr 2)) (Sopr 2))
