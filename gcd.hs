myGcd a b = case remainder of
    0 -> b
    _ -> myGcd b remainder
    where remainder = a `mod` b