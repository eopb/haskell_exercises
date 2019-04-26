{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns #-}

import qualified Data.Text.Lazy as T

type Word = T.Text


data Token = Word | ArrowLeft | ArrowRight | If deriving( Show )

a :: T.Text

a = "hello"

tokenizeWord :: T.Text -> Maybe Token
tokenizeWord x = if (T.head x == ' ') || (T.head x == '\n')
                     then tokenizeWord (T.tail x)
                 else if isNextWord "if"
                     then Just If
                 else Nothing
    where isNextWord = isNextWordOf x

nextTokenIs :: T.Text -> Maybe Token
nextTokenIs x = case (T.take 3 x) of
    ("if ") -> Just If
    _       -> Nothing
    where isNextWord = isNextWordOf x

test = isNextWordOf "if afjkasd" "if"
tesdt = tokenizeWord "if afjkasd"

tryMaybe :: Maybe a -> Maybe a -> Maybe a
tryMaybe (Just x) y = Just x
tryMaybe Nothing  y = y

isNextWordOf :: T.Text -> T.Text -> Bool
isNextWordOf sentence word = (T.snoc word ' ') == firstLengthLetters
    where
        wordLength         = T.length word
        firstLengthLetters = T.take (wordLength + 1) sentence