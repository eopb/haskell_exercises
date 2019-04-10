harmonicValues = map (1 /) [1..]
harmonicSeries acc = mconcat (take acc harmonicValues)

instance Semigroup Double where
    (<>) = (+)
instance Monoid Double where
    mempty = 0