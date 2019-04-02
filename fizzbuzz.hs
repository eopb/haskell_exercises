fizzbuzz = map fizzbuzzSingle [1..]

fizzbuzzSingle n = case (n `mod` 3, n `mod` 5) of
    (0, 0) -> "FizzBuzz"
    (_, 0) -> "Fizz"
    (0, _) -> "Buzz"
    (_, _) -> show n