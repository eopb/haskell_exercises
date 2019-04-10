isPalindrome x = noSpaces == reverse noSpaces
    where noSpaces = filter (/= ' ') x

coolPalindrome = isPalindrome "a man a plan a canal panama"