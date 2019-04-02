bubbleSort f list = bubbleSort f list 0 0
    where
    bubbleSort f list position numberOfCorrects = if onLastItem
        then if finished
            then list
            else skipTo 0 0
        else if partAlreadySorted
            then skipTo (position + 1) (numberOfCorrects + 1)
            else nextSortIter (swap list position) (position + 1) numberOfCorrects
        where
        onLastItem = position + 1 == length list
        finished = numberOfCorrects == length list - 1
        nextSortIter = bubbleSort f
        skipTo = nextSortIter list
        partAlreadySorted = f (list !! position) (list !! (position + 1))
        swap list index = listBefore ++ swapedValues ++ listAfter
            where
            swapedValues = [list !! (index + 1), list !! index]
            listBefore = take (index) list
            listAfter = drop (index + 2) list

bubbleSortInt list = bubbleSort (\x y -> x >= y) list