ifEven f x = if even x
    then f x
    else x

ifEvenDouble = ifEven double
    where double x = x * 2

ifEvenSquare = ifEven square
    where square x = x * x

ifEvenInc = ifEven inc
    where inc x = x + 1

ifEvenCube = ifEven cube
    where
        cube = swapArgs (^) 3
        swapArgs f = (\x y -> f y x)