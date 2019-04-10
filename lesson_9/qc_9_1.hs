myRemove :: (a -> Bool) -> [a] -> [a]
myRemove _ [] = []
myRemove f (x:xs) = if f x
    then restOfList
    else x:restOfList
    where restOfList = myRemove f xs