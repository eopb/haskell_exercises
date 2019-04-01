subseq start end xs = take difference (drop start xs)
    where difference = end - start