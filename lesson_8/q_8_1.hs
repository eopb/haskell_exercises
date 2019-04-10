myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []