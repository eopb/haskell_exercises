myTake 0 _ = []
myTake n (x:xs) = x:(myTake (n - 1) xs)