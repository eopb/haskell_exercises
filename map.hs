myMap [] _ = []

myMap (x:xs) f = (f x):(myMap xs f)