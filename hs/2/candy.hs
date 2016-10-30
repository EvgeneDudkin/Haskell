data Candy = Tort String Double | Konf String Double Double

price (Tort _ val) = val
price (Konf _ val hei) = val*hei 

totalPrice [] = 0
totalPrice (x:xs) = price x + totalPrice xs

test = totalPrice [Tort "A" 100, Konf "B" 200 0.5, Tort "C" 800]
