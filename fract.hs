type Numerator   = Integer
type Denominator = Integer
data Fraction    = Fraction Numerator Denominator

testFrac = Fraction 5 8

instance Show Fraction where
    show (Fraction numerator denominator) = mconcat
                                                   [ "("
                                                   , show numerator
                                                   , ", "
                                                   , show denominator
                                                   , ")"
                                                   , " or "
                                                   , show (div numerator denominator)]