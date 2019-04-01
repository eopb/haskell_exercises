myGcd a b = if remainder == 0
    then b
    else myGcd b remainder
    where remainder = a `mod` b