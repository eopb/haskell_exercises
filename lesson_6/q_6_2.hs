subseq start end = (take difference . drop start)
    where difference = end - start