import Data.List

listOfNames = [("Bernard", "Sumner"), ("Ian", "Curtis"), ("Ethan", "Brierley"), ("Peter", "Hook"), ("Joel", "Brierley"), ("Stephen", "Morris")]

compareNames name1 name2 = if name1 > name2
    then GT
    else if name1 < name2
        then LT
        else EQ

compareFullName (firstName1, secondName1) (firstName2, secondName2) = case secondNamesEq of
    EQ -> compareNames firstName1 firstName2
    _ -> secondNamesEq
    where
        secondNamesEq = compareNames secondName1 secondName2

main = do
    print (sortBy compareFullName listOfNames)