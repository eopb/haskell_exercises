subseq :: Int -> Int -> [a] -> [a]
subseq start end = take difference . drop start
    where difference = end - start