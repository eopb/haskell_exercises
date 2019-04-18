import qualified Data.Map as Map

fib _ 0 = 1
fib _ 1 = 1
fib c n = fibBefore + fibTwoBefore
    where
        newCache = Map.insert (n - 1) fibBefore ((Map.insert (n - 2) fibTwoBefore c))
        cachedFib = fib newCache
        fibBefore = cachedFib (n - 1)
        fibTwoBefore = cachedFib (n - 2)

fibBase = fib Map.empty