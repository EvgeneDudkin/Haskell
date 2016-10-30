help (x:y:xs) = (x+y): help (y:xs)

fib = 1:1:(help fib)