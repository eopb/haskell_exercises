inFirstHalf x list = elem x halfList
    where
        halfLength = quot (length list) 2
        halfList = take halfLength list