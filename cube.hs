cube = swapArgs (^) 3

swapArgs f = (\x y -> f y x)